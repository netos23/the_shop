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
    apiKey: 'AIzaSyAc_u9yuxb3CPDgZuUdnHEjPD7Bsgww3KM',
    appId: '1:238483623448:web:601f0aa92208cc42763d6d',
    messagingSenderId: '238483623448',
    projectId: 'the-store-f98ac',
    authDomain: 'the-store-f98ac.firebaseapp.com',
    storageBucket: 'the-store-f98ac.appspot.com',
    measurementId: 'G-Y89BF400NH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBuY24prKJptJxD1zzrwgI6MTyqgXCv6NA',
    appId: '1:238483623448:android:a20d268d23fd313c763d6d',
    messagingSenderId: '238483623448',
    projectId: 'the-store-f98ac',
    storageBucket: 'the-store-f98ac.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCF2DR10youYWlOVSqwotzhfdJMHwFj_gI',
    appId: '1:238483623448:ios:6e247b2f3943ca74763d6d',
    messagingSenderId: '238483623448',
    projectId: 'the-store-f98ac',
    storageBucket: 'the-store-f98ac.appspot.com',
    iosClientId: '238483623448-8pet3r8neig70rv8tp5ht3igpkhvui5m.apps.googleusercontent.com',
    iosBundleId: 'ru.fbtw.farmApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCF2DR10youYWlOVSqwotzhfdJMHwFj_gI',
    appId: '1:238483623448:ios:b257456bb549a41f763d6d',
    messagingSenderId: '238483623448',
    projectId: 'the-store-f98ac',
    storageBucket: 'the-store-f98ac.appspot.com',
    iosClientId: '238483623448-l1duu3hiq40i9iafej62d35nnudvdja8.apps.googleusercontent.com',
    iosBundleId: 'ru.fbtw.farmApp.RunnerTests',
  );
}