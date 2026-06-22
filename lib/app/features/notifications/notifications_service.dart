import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:gordon_ferguson_app/app/config/logger.dart';
import 'package:gordon_ferguson_app/app/config/router.dart';
import 'package:gordon_ferguson_app/app/features/posts/data/wordpress_client.dart';
import 'package:gordon_ferguson_app/app/features/posts/view/screens/post_detail_view.dart';
import 'package:gordon_ferguson_app/app/features/settings/data/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'notifications_service.g.dart';

@Riverpod(keepAlive: true)
class NotificationsService extends _$NotificationsService {
  static const subscriptionKey = 'notificationsSubscribed';
  static const topicId = 'new_post';

  late final FirebaseMessaging firebaseMessaging;
  late final SharedPreferencesWithCache sharedPreferences;

  @override
  bool build() {
    sharedPreferences = ref.watch(sharedPreferencesProvider).requireValue;
    firebaseMessaging = FirebaseMessaging.instance;
    return sharedPreferences.getBool(subscriptionKey) ?? true;
  }

  Future<void> initializePushNotifications() async {
    await registerDevice();
    await firebaseMessaging.getInitialMessage().then(_handleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
  }

  Future<void> registerDevice() async {
    final permission = await firebaseMessaging.requestPermission();
    if (permission.authorizationStatus == AuthorizationStatus.denied) return;

    if (state) {
      await firebaseMessaging.subscribeToTopic(topicId);
      Log.d('Subscribed to notification topic: $topicId');
    }
  }

  Future<void> updateSubscriptionStatus({required bool isSubscribed}) async {
    if (isSubscribed) {
      final permission = await firebaseMessaging.requestPermission();
      if (permission.authorizationStatus == AuthorizationStatus.denied) return;
      await firebaseMessaging.subscribeToTopic(topicId);
    } else {
      await firebaseMessaging.unsubscribeFromTopic(topicId);
    }

    await sharedPreferences.setBool(subscriptionKey, isSubscribed);
    state = isSubscribed;
  }

  Future<void> _handleMessage(RemoteMessage? message) async {
    if (message == null) return;

    try {
      final postId = int.parse(message.data['post_id'] as String);
      final post = await ref.read(wordpressClientProvider).getPost(postId);
      final goRouter = ref.read(goRouterProvider);
      if (goRouter.canPop()) {
        await goRouter.pushReplacementNamed(PostDetailView.name, extra: post);
      } else {
        await goRouter.pushNamed(PostDetailView.name, extra: post);
      }
    } catch (e) {
      Log.e('Error handling notification: $e', e);
    }
  }
}
