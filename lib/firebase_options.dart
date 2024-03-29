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
    apiKey: 'AIzaSyAfQgBl5NDJf-ulkds2vz7w8BUEEQNMoxE',
    appId: '1:820090700637:web:579be736f66c3e620e5eb4',
    messagingSenderId: '820090700637',
    projectId: 'vehishare-bcfba',
    authDomain: 'vehishare-bcfba.firebaseapp.com',
    databaseURL: 'https://vehishare-bcfba-default-rtdb.firebaseio.com',
    storageBucket: 'vehishare-bcfba.appspot.com',
    measurementId: 'G-R3R7S4ZCQE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA31gaRJfUDfC1RkDCtIpsAfyIgz51LZQg',
    appId: '1:820090700637:android:00e71c0927e2e6510e5eb4',
    messagingSenderId: '820090700637',
    projectId: 'vehishare-bcfba',
    databaseURL: 'https://vehishare-bcfba-default-rtdb.firebaseio.com',
    storageBucket: 'vehishare-bcfba.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC8KRKsOhRtivuKTJvkn0fFpifK-us_ShE',
    appId: '1:820090700637:ios:77187e037fe49f200e5eb4',
    messagingSenderId: '820090700637',
    projectId: 'vehishare-bcfba',
    databaseURL: 'https://vehishare-bcfba-default-rtdb.firebaseio.com',
    storageBucket: 'vehishare-bcfba.appspot.com',
    iosClientId: '820090700637-v2cgsg5oakioc419vvvve3h0igbumleg.apps.googleusercontent.com',
    iosBundleId: 'com.example.vehishare',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC8KRKsOhRtivuKTJvkn0fFpifK-us_ShE',
    appId: '1:820090700637:ios:8d529912d008c5570e5eb4',
    messagingSenderId: '820090700637',
    projectId: 'vehishare-bcfba',
    databaseURL: 'https://vehishare-bcfba-default-rtdb.firebaseio.com',
    storageBucket: 'vehishare-bcfba.appspot.com',
    iosClientId: '820090700637-c1ci42g71s0fnfrruf3bpekh0it7sp4r.apps.googleusercontent.com',
    iosBundleId: 'com.example.vehishare.RunnerTests',
  );
}
