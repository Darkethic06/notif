import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:notifi/controller/FirebaseController.dart';
import 'package:notifi/firebase_options.dart';
import 'package:notifi/view/MainPage.dart';
import 'package:notifi/view/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseController().initNotification();
  await FirebaseController().handleMessage(RemoteNotification());
  // await AwesomeNotifications().initialize(null, [
  //   NotificationChannel(
  //       channelKey: 'basic_channel',
  //       channelName: "basic_channel",
  //       channelDescription: "Basic Notification Channel")
  // ], channelGroups: [
  //   NotificationChannelGroup(
  //       channelGroupKey: "basic_channel_group", channelGroupName: "Basic Group")
  // ]);
  // bool isAllowedNotification =
  //     await AwesomeNotifications().isNotificationAllowed();
  // if (isAllowedNotification) {
  //   AwesomeNotifications().requestPermissionToSendNotifications();
  // }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Mainpage(),
    );
  }
}
