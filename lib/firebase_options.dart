// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCu-HtRT5HMYLUQVSuHYZbwvd22Rt2Uw5Q',
    appId: '1:757820347718:web:a1ccbefd8e7abe92f68147',
    messagingSenderId: '757820347718',
    projectId: 'chatapp-93d3b',
    authDomain: 'chatapp-93d3b.firebaseapp.com',
    storageBucket: 'chatapp-93d3b.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCMQXeGT80u4vVY3w6ktkF24NqeNSQpk98',
    appId: '1:757820347718:android:6bb5ea28b8d2311bf68147',
    messagingSenderId: '757820347718',
    projectId: 'chatapp-93d3b',
    storageBucket: 'chatapp-93d3b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyByrPkH4l-BsXit8mmyuC-qaqcDpAIP__8',
    appId: '1:757820347718:ios:63e6d9399e208aaff68147',
    messagingSenderId: '757820347718',
    projectId: 'chatapp-93d3b',
    storageBucket: 'chatapp-93d3b.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyByrPkH4l-BsXit8mmyuC-qaqcDpAIP__8',
    appId: '1:757820347718:ios:63e6d9399e208aaff68147',
    messagingSenderId: '757820347718',
    projectId: 'chatapp-93d3b',
    storageBucket: 'chatapp-93d3b.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCu-HtRT5HMYLUQVSuHYZbwvd22Rt2Uw5Q',
    appId: '1:757820347718:web:e3068d36047ad3ccf68147',
    messagingSenderId: '757820347718',
    projectId: 'chatapp-93d3b',
    authDomain: 'chatapp-93d3b.firebaseapp.com',
    storageBucket: 'chatapp-93d3b.appspot.com',
  );
}