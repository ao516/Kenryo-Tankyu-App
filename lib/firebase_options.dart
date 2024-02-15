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
    apiKey: 'AIzaSyDjM1EWHVQ3_ifEk8fSYuKuq5iZklSA94M',
    appId: '1:444956106453:web:9fe8d55415757fde374c5c',
    messagingSenderId: '444956106453',
    projectId: 'kenryo-tankyu',
    authDomain: 'kenryo-tankyu.firebaseapp.com',
    storageBucket: 'kenryo-tankyu.appspot.com',
    measurementId: 'G-X756D6BFLR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDt_7YS0xqmzuFKBfKldOdgsOL0LUeT-fs',
    appId: '1:444956106453:android:7b9bfcba0a11f9eb374c5c',
    messagingSenderId: '444956106453',
    projectId: 'kenryo-tankyu',
    storageBucket: 'kenryo-tankyu.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAdV0T5M7xNfKAIkFJu_rIohIPjpo5qdSU',
    appId: '1:444956106453:ios:13c3cca46e836a5a374c5c',
    messagingSenderId: '444956106453',
    projectId: 'kenryo-tankyu',
    storageBucket: 'kenryo-tankyu.appspot.com',
    iosBundleId: 'com.example.appDevelop',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAdV0T5M7xNfKAIkFJu_rIohIPjpo5qdSU',
    appId: '1:444956106453:ios:c8018258db269ffb374c5c',
    messagingSenderId: '444956106453',
    projectId: 'kenryo-tankyu',
    storageBucket: 'kenryo-tankyu.appspot.com',
    iosBundleId: 'com.example.appDevelop.RunnerTests',
  );
}