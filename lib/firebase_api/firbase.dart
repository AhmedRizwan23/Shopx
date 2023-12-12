import 'package:firebase_messaging/firebase_messaging.dart';

class Firebaseapi {
// create instance of firebase messaging
  final firebaseMessaging = FirebaseMessaging.instance;

//function to intialize notifications
  Future<void> initNotification() async {
// request permission from user
    await firebaseMessaging.requestPermission();

    final fcmtoken = await firebaseMessaging.getToken();
    print("token is $fcmtoken");

//fetch the firebasecloudmessaging for this device
  }

//function to handle received messages

// function to intialize foreground and background settings
}
