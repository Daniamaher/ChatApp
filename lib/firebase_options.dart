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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyA-ufvYjQ74fk81sks19w_oY4COHi8FU3I',
    appId: '1:769687449758:web:d729037a702751baf44b8f',
    messagingSenderId: '769687449758',
    projectId: 'chat-app-1ef5e',
    authDomain: 'chat-app-1ef5e.firebaseapp.com',
    storageBucket: 'chat-app-1ef5e.appspot.com',
    measurementId: 'G-W7GZ66NBVD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCsiq4RzWCgypHI5Cn_mHJTwAeXPw2biK8',
    appId: '1:769687449758:android:0cee26281a84e65bf44b8f',
    messagingSenderId: '769687449758',
    projectId: 'chat-app-1ef5e',
    storageBucket: 'chat-app-1ef5e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDPhjot6owgIo6vmI_MWyUSflKWCnvU7Mk',
    appId: '1:769687449758:ios:2c6e7555313c2d8af44b8f',
    messagingSenderId: '769687449758',
    projectId: 'chat-app-1ef5e',
    storageBucket: 'chat-app-1ef5e.appspot.com',
    iosBundleId: 'com.example.scholarChat',
  );
}
