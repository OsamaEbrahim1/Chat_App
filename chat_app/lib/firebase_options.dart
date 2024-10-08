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
    apiKey: 'AIzaSyCCyB48i5EEYwnDjtP1uGcfDN7o9fjvYuw',
    appId: '1:875077256780:web:4e64aac720a247ff5f56e9',
    messagingSenderId: '875077256780',
    projectId: 'chat-app-2cf31',
    authDomain: 'chat-app-2cf31.firebaseapp.com',
    storageBucket: 'chat-app-2cf31.appspot.com',
    measurementId: 'G-69BE6MQL01',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBejnpwqGz_exUoO9in4DACM--KPFPIG-Y',
    appId: '1:875077256780:android:7c347a95a29775335f56e9',
    messagingSenderId: '875077256780',
    projectId: 'chat-app-2cf31',
    storageBucket: 'chat-app-2cf31.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA0uSERJGJ_9UQkTFIFqRf1HR3H7qRihMo',
    appId: '1:875077256780:ios:ef40711baa56abb65f56e9',
    messagingSenderId: '875077256780',
    projectId: 'chat-app-2cf31',
    storageBucket: 'chat-app-2cf31.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA0uSERJGJ_9UQkTFIFqRf1HR3H7qRihMo',
    appId: '1:875077256780:ios:ef40711baa56abb65f56e9',
    messagingSenderId: '875077256780',
    projectId: 'chat-app-2cf31',
    storageBucket: 'chat-app-2cf31.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCCyB48i5EEYwnDjtP1uGcfDN7o9fjvYuw',
    appId: '1:875077256780:web:acb26314adc54c905f56e9',
    messagingSenderId: '875077256780',
    projectId: 'chat-app-2cf31',
    authDomain: 'chat-app-2cf31.firebaseapp.com',
    storageBucket: 'chat-app-2cf31.appspot.com',
    measurementId: 'G-X5384T84CX',
  );
}
