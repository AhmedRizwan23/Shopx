// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAK6SizRO8JVQboq30Y-dAOCiamyiI9dKs',
    appId: '1:704940184292:web:35971b5fe6873baf0c92f1',
    messagingSenderId: '704940184292',
    projectId: 'ecomerece-pushnotification',
    authDomain: 'ecomerece-pushnotification.firebaseapp.com',
    storageBucket: 'ecomerece-pushnotification.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDPEpaBuFaPJn3p6xu44xLQfO8bs5eKdWk',
    appId: '1:704940184292:android:bed53d6c205ac1570c92f1',
    messagingSenderId: '704940184292',
    projectId: 'ecomerece-pushnotification',
    storageBucket: 'ecomerece-pushnotification.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBWTOMXY81MWxF3xi6fqjdwYAZg0AjeWxg',
    appId: '1:704940184292:ios:1e386998590be7830c92f1',
    messagingSenderId: '704940184292',
    projectId: 'ecomerece-pushnotification',
    storageBucket: 'ecomerece-pushnotification.appspot.com',
    iosBundleId: 'com.example.ecommerceApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBWTOMXY81MWxF3xi6fqjdwYAZg0AjeWxg',
    appId: '1:704940184292:ios:12058217ee9b32ee0c92f1',
    messagingSenderId: '704940184292',
    projectId: 'ecomerece-pushnotification',
    storageBucket: 'ecomerece-pushnotification.appspot.com',
    iosBundleId: 'com.example.ecommerceApp.RunnerTests',
  );
}
