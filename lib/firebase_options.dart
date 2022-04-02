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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD7H6igLIcp4f7Z9iL_WPMqk-MpND0igf4',
    appId: '1:485408608680:web:5460bb6879dd74a1f04d9d',
    messagingSenderId: '485408608680',
    projectId: 'vocabify-56830',
    authDomain: 'vocabify-56830.firebaseapp.com',
    storageBucket: 'vocabify-56830.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCfOXmx4KCnHtzUcKMTa8FHR1xaIQbAwVU',
    appId: '1:485408608680:android:9394d752a95f18bff04d9d',
    messagingSenderId: '485408608680',
    projectId: 'vocabify-56830',
    storageBucket: 'vocabify-56830.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBy4JBA2tAiVYsS0iRZwgIcKp_G_F-IOt4',
    appId: '1:485408608680:ios:98df8757fbb26dfff04d9d',
    messagingSenderId: '485408608680',
    projectId: 'vocabify-56830',
    storageBucket: 'vocabify-56830.appspot.com',
    iosClientId: '485408608680-fbo57i5t70jf1nklnr3u63ihreu3soqn.apps.googleusercontent.com',
    iosBundleId: 'com.vocabify.app',
  );
}