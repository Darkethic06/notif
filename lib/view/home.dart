import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
// import 'package:notifi/controller/local_notifier.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState() {
    // AwesomeNotifications().setListeners(
    //     onActionReceivedMethod:
    //         LocalNotificationController.onActionReceivedMethod,
    //     onDismissActionReceivedMethod:
    //         LocalNotificationController.onDismissActionReceivedMethod,
    //     onNotificationCreatedMethod:
    //         LocalNotificationController.onNotificationCreateMenthod,
    //     onNotificationDisplayedMethod:
    //         LocalNotificationController.onNotificationDisplayMenthod);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AwesomeNotifications().createNotification(
            content: NotificationContent(
                id: 1,
                channelKey: "basic_channel",
                title: "Test Notification",
                body: "This is just a Test Notifcation",
                criticalAlert: true),
            actionButtons: [
              NotificationActionButton(
                  key: 'REPLY',
                  label: "Reply Message",
                  requireInputText: true,
                  actionType: ActionType.SilentAction),
              NotificationActionButton(
                key: "REDIRECT",
                label: "Open",
              )
            ],
          );
        },
        child: Icon(Icons.notification_add),
      ),
    );
  }
}
