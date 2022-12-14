// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart';
 import 'firebase_options.dart';

    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
 // ...
 await Firebase.initializeApp(
   options: DefaultFirebaseOptions.currentPlatform,
 );
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
    apiKey: 'AIzaSyDAfNjvfOBi8XEAP2BKtseu2RjJYi-KXpw',
    appId: '1:441145325598:web:647d413785afcc2428960f',
    messagingSenderId: '441145325598',
    projectId: 'final-firebase-988b0',
    authDomain: 'final-firebase-988b0.firebaseapp.com',
    storageBucket: 'final-firebase-988b0.appspot.com',
    measurementId: 'G-ZBX3E4Y495',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCDlTL3z9g3OwQ19n91Y24RefZgK3RB_2k',
    appId: '1:441145325598:android:324457733929a51f28960f',
    messagingSenderId: '441145325598',
    projectId: 'final-firebase-988b0',
    storageBucket: 'final-firebase-988b0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAST59gt3ugoAmjD5_n0-0A7B4OUm1-Mxc',
    appId: '1:441145325598:ios:b0c2185aadda0a7628960f',
    messagingSenderId: '441145325598',
    projectId: 'final-firebase-988b0',
    storageBucket: 'final-firebase-988b0.appspot.com',
    iosClientId: '441145325598-lkj096ptef7lm2r3dvn5t943bb1p34se.apps.googleusercontent.com',
    iosBundleId: 'com.example.finalp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAST59gt3ugoAmjD5_n0-0A7B4OUm1-Mxc',
    appId: '1:441145325598:ios:b0c2185aadda0a7628960f',
    messagingSenderId: '441145325598',
    projectId: 'final-firebase-988b0',
    storageBucket: 'final-firebase-988b0.appspot.com',
    iosClientId: '441145325598-lkj096ptef7lm2r3dvn5t943bb1p34se.apps.googleusercontent.com',
    iosBundleId: 'com.example.finalp',
  );
}
