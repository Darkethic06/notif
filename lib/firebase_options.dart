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
    apiKey: 'AIzaSyDpdpwU7EDMZ9t0M4XdiLtOck-06bN5shU',
    appId: '1:1044986290243:web:44efbc097950cc048034f6',
    messagingSenderId: '1044986290243',
    projectId: 'noitifi',
    authDomain: 'noitifi.firebaseapp.com',
    storageBucket: 'noitifi.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA9wbMFHis60v9sUJmMdD4x_iki7qnYHoo',
    appId: '1:1044986290243:android:3f17ec4b1753b6248034f6',
    messagingSenderId: '1044986290243',
    projectId: 'noitifi',
    storageBucket: 'noitifi.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDoOpniO7cCautwZ-Y4eKAhUQ2GVlC6iX8',
    appId: '1:1044986290243:ios:e7bba56672ac99ef8034f6',
    messagingSenderId: '1044986290243',
    projectId: 'noitifi',
    storageBucket: 'noitifi.appspot.com',
    iosBundleId: 'com.example.notifi',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDoOpniO7cCautwZ-Y4eKAhUQ2GVlC6iX8',
    appId: '1:1044986290243:ios:0465446d243e0adb8034f6',
    messagingSenderId: '1044986290243',
    projectId: 'noitifi',
    storageBucket: 'noitifi.appspot.com',
    iosBundleId: 'com.example.notifi.RunnerTests',
  );
}
