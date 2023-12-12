import 'package:ecommerce_app/pages/notificationpage.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

class Firebaseapi {
// create instance of firebase messaging
  final firebaseMessaging = FirebaseMessaging.instance;

//function to intialize notifications
  Future<void> initNotification() async {
// request permission from user
    await firebaseMessaging.requestPermission();

    final fcmtoken = await firebaseMessaging.getToken();
    print("token is $fcmtoken"); //print the token

    initialiseForeGroundAndBackgroundSettings();
  }

//function to handle received messages
  void handlemessages(RemoteMessage? message) {
    if (message == null) return;
// when user tap on notification navigate to notification screen
    Get.to(const Notificationpage(), arguments: message);
  }

// function to intialize foreground and background settings
  Future<void> initialiseForeGroundAndBackgroundSettings() async {
//handle notifications if the app was terminated and now opened
    FirebaseMessaging.instance.getInitialMessage().then(handlemessages);
//attach event listeners for when notification opens the app
    FirebaseMessaging.onMessageOpenedApp.listen(handlemessages);
  }
}
