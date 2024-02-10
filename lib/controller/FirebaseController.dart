import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseController {
  final firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotification() async {
    await firebaseMessaging.requestPermission();

    final fcmToken = await firebaseMessaging.getToken();

    print('Token : $fcmToken');
  }

  Future<void> handleMessage(RemoteNotification notification) {}
}
