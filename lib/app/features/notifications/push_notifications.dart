import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:gordon_ferguson_app/app/config/logger.dart';
import 'package:gordon_ferguson_app/app/config/router.dart';
import 'package:gordon_ferguson_app/app/features/posts/data/wordpress_client.dart';
import 'package:gordon_ferguson_app/app/features/posts/view/screens/post_detail_view.dart';
import 'package:gordon_ferguson_app/app/features/settings/data/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:appwrite/appwrite.dart';

part 'push_notifications.g.dart';

@riverpod
class PushNotifications extends _$PushNotifications {
  static const tokenKey = "notificationToken";
  static const deviceIdKey = "deviceId";
  static const projectId = '67424e230025790edf98';

  late final FirebaseMessaging firebaseMessaging;
  late final SharedPreferences sharedPreferences;
  final Client _appwriteClient = Client().setProject(projectId);
  String get deviceId => getDeviceId();

  @override
  String? build() {
    sharedPreferences = ref.watch(sharedPreferencesProvider).requireValue;
    firebaseMessaging = FirebaseMessaging.instance;
    firebaseMessaging.onTokenRefresh.listen(updateToken);
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
    firebaseMessaging.getInitialMessage().then(handleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }

  Future<void> registerDevice() async {
    if (state != null) return;

    // get permission and create push target
    final NotificationSettings permission = await firebaseMessaging.requestPermission();

    if (permission.authorizationStatus != AuthorizationStatus.denied) {
      final fcmToken = await firebaseMessaging.getToken();
      if (fcmToken == null) return;

      final Account account = Account(_appwriteClient);
      sharedPreferences.setString(tokenKey, fcmToken);
      account.createPushTarget(targetId: deviceId, identifier: fcmToken);
      state = fcmToken;
    }
  }

  Future<void> updateToken(String? newToken) async {
    if (newToken == null) return;

    if (newToken != state) {
      final Account account = Account(_appwriteClient);
      sharedPreferences.setString(tokenKey, newToken);
      account.updatePushTarget(targetId: deviceId, identifier: newToken);
      state = newToken;
    }
  }

  void handleMessage(RemoteMessage? message) async {
    if (message == null) return;

    final postId = message.data["post_id"] as int;
    final post = await ref.read(wordpressClientProvider).getPost(postId);
    ref.read(goRouterProvider).pushNamed(PostDetailView.name, extra: post);
  }
}
