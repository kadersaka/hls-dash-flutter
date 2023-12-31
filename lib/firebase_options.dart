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
    apiKey: 'AIzaSyBMsBRAJ1ZZtLshEuYztPScChWt0xvXYeI',
    appId: '1:1083362088051:web:da7d9663139f3b17f10606',
    messagingSenderId: '1083362088051',
    projectId: 'tesproject-c05e0',
    authDomain: 'tesproject-c05e0.firebaseapp.com',
    storageBucket: 'tesproject-c05e0.appspot.com',
    measurementId: 'G-WY5KWZSR7D',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCmjOhAGd8dOinyCwCpDetrnGx43Z5rumI',
    appId: '1:1083362088051:android:ef32e5e447fc562ef10606',
    messagingSenderId: '1083362088051',
    projectId: 'tesproject-c05e0',
    storageBucket: 'tesproject-c05e0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAiuZaguwj0aLYZ2AXIVS11o8qhjfFzNXk',
    appId: '1:1083362088051:ios:82f53897b4aa7e1df10606',
    messagingSenderId: '1083362088051',
    projectId: 'tesproject-c05e0',
    storageBucket: 'tesproject-c05e0.appspot.com',
    iosClientId: '1083362088051-lv9j97m6cm8mgcfrerkai34p3icd93vv.apps.googleusercontent.com',
    iosBundleId: 'com.example.testflutter3',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAiuZaguwj0aLYZ2AXIVS11o8qhjfFzNXk',
    appId: '1:1083362088051:ios:82f53897b4aa7e1df10606',
    messagingSenderId: '1083362088051',
    projectId: 'tesproject-c05e0',
    storageBucket: 'tesproject-c05e0.appspot.com',
    iosClientId: '1083362088051-lv9j97m6cm8mgcfrerkai34p3icd93vv.apps.googleusercontent.com',
    iosBundleId: 'com.example.testflutter3',
  );
}
