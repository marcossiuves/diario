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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAaHkcYO0RmQFkgCHan9qDWAbDG4qAvwLc',
    appId: '1:448380389780:web:df74b8b98db50c05c72781',
    messagingSenderId: '448380389780',
    projectId: 'diario-9e3b9',
    authDomain: 'diario-9e3b9.firebaseapp.com',
    storageBucket: 'diario-9e3b9.appspot.com',
    measurementId: 'G-1GG28W4H6V',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAKsZcctx05PN-hmUXdOhL4nKFU-jXAiR4',
    appId: '1:448380389780:android:63af6d88b8920a37c72781',
    messagingSenderId: '448380389780',
    projectId: 'diario-9e3b9',
    storageBucket: 'diario-9e3b9.appspot.com',
  );
}
