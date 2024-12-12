import 'dart:io';

import 'package:appwrite/models.dart' hide Log;
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:gordon_ferguson_app/app/config/logger.dart';
import 'package:gordon_ferguson_app/app/config/router.dart';
import 'package:gordon_ferguson_app/app/features/posts/data/wordpress_client.dart';
import 'package:gordon_ferguson_app/app/features/posts/view/screens/post_detail_view.dart';
import 'package:gordon_ferguson_app/app/features/settings/data/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:appwrite/appwrite.dart';

part 'push_notifications.g.dart';

@Riverpod(keepAlive: true)
class PushNotifications extends _$PushNotifications {
  static const tokenKey = "notificationToken";
  static const deviceIdKey = "deviceId";
  static const projectId = '67424e230025790edf98';
  static const databaseId = "gordon_ferguson_teachings";
  static const collectionId = "tokens";
  static const topicId = "new_post";

  late final FirebaseMessaging firebaseMessaging;
  late final SharedPreferences sharedPreferences;
  final Client _appwriteClient = Client().setProject(projectId);
  String get deviceId => getDeviceId();

  @override
  String? build() {
    sharedPreferences = ref.watch(sharedPreferencesProvider).requireValue;
    firebaseMessaging = FirebaseMessaging.instance;
    firebaseMessaging.onTokenRefresh.listen(_updateToken);
    Log.d("Device ID: $deviceId");
    return sharedPreferences.getString(tokenKey);
  }

  String getDeviceId() {
    String? userId = sharedPreferences.getString(deviceIdKey);

    if (userId == null) {
      userId = ID.unique();
      sharedPreferences.setString(deviceIdKey, userId);
    }

    return userId;
  }

  Future<void> initializePushNotifications() async {
    await registerDevice();
    firebaseMessaging.getInitialMessage().then(_handleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
  }

  Future<void> registerDevice() async {
    // check local database
    if (state != null) return;

    // // check server database
    if (await _getTokenFromAppwrite()) return;

    // get permission and create push target
    final NotificationSettings permission = await firebaseMessaging.requestPermission();

    if (permission.authorizationStatus != AuthorizationStatus.denied) {
      final fcmToken = await firebaseMessaging.getToken();
      Log.d(DateTime.now().toIso8601String());
      if (fcmToken == null) return;

      Log.d("New token: $fcmToken");

      try {
        final databases = Databases(_appwriteClient);
        await firebaseMessaging.subscribeToTopic(topicId);
        await databases.createDocument(
          databaseId: databaseId,
          collectionId: collectionId,
          documentId: deviceId,
          data: {
            "token": fcmToken,
            "timestamp": DateTime.now().toIso8601String(),
            "platform": kIsWeb
                ? "web"
                : Platform.isAndroid
                    ? "android"
                    : "ios",
            "is_subscribed": true,
          },
        );
        sharedPreferences.setString(tokenKey, fcmToken);
        state = fcmToken;
      } catch (e) {
        Log.e("$e", e);
      }
    }
  }

  Future<bool> _getTokenFromAppwrite() async {
    final Databases databases = Databases(_appwriteClient);
    final Document document = await databases.getDocument(
      databaseId: databaseId,
      collectionId: collectionId,
      documentId: deviceId,
    );

    if (document.data["token"] != null) {
      final fcmToken = document.data["token"] as String;
      sharedPreferences.setString(tokenKey, fcmToken);
      state = fcmToken;
      return true;
    }

    return false;
  }

  Future<void> updateSubscriptionStatus(bool isSubscribed) async {
    if (isSubscribed) {
      await firebaseMessaging.unsubscribeFromTopic(topicId);
    } else {
      await firebaseMessaging.subscribeToTopic(topicId);
    }
    final Databases databases = Databases(_appwriteClient);
    await databases.updateDocument(
      databaseId: databaseId,
      collectionId: collectionId,
      documentId: deviceId,
      data: {"is_subscribed": !isSubscribed},
    );
  }

  Future<void> _updateToken(String? newToken) async {
    if (newToken == null) return;

    if (newToken != state) {
      final databases = Databases(_appwriteClient);
      await databases.updateDocument(
        databaseId: databaseId,
        collectionId: collectionId,
        documentId: deviceId,
        data: {
          "token": newToken,
          "timestamp": DateTime.now().toIso8601String(),
        },
      );
      sharedPreferences.setString(tokenKey, newToken);
      state = newToken;
    }
  }

  void _handleMessage(RemoteMessage? message) async {
    if (message == null) return;

    try {
      final postId = int.parse(message.data["post_id"] as String);
      final post = await ref.read(wordpressClientProvider).getPost(postId);
      final goRouter = ref.read(goRouterProvider);
      if (goRouter.canPop()) {
        goRouter.pushReplacementNamed(PostDetailView.name, extra: post);
      } else {
        goRouter.pushNamed(PostDetailView.name, extra: post);
      }
    } catch (e) {
      Log.e("$e", e);
    }
  }
}
