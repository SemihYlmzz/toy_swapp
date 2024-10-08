// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform, kIsWeb;

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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    return switch (defaultTargetPlatform) {
      TargetPlatform.android => android,
      TargetPlatform.iOS => ios,
      _ => throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        ),
    };
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCugSBHux-mWAFN5vgaeKv5BVW3QYb5ZvU',
    appId: '1:541529185073:android:82a6bbe090087d52a9ae10',
    messagingSenderId: '541529185073',
    projectId: 'toy-swapp-dev',
    storageBucket: 'toy-swapp-dev.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBKcPUSf-ZzCbDRssOaMNLTqWXcP0fPgbM',
    appId: '1:541529185073:ios:0270b45e31ccf2c8a9ae10',
    messagingSenderId: '541529185073',
    projectId: 'toy-swapp-dev',
    storageBucket: 'toy-swapp-dev.appspot.com',
    iosBundleId: 'com.devangs.app',
  );
}
