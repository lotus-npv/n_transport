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
    apiKey: 'AIzaSyAaXwzirUBUfOqdlsRlub7v6BJXcK2Fj-k',
    appId: '1:1071117148671:web:63b50fabe2f89f107fc7ca',
    messagingSenderId: '1071117148671',
    projectId: 'n-transport',
    authDomain: 'n-transport.firebaseapp.com',
    storageBucket: 'n-transport.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC4JaZ0hdJdjGU9ZCmxtSaRPtBV8s7k104',
    appId: '1:1071117148671:android:fcc676dbd1dae5287fc7ca',
    messagingSenderId: '1071117148671',
    projectId: 'n-transport',
    storageBucket: 'n-transport.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCp8JaATynjlSQQ-zqg9q_ii2txEKZBJ2k',
    appId: '1:1071117148671:ios:c7672302ac829e557fc7ca',
    messagingSenderId: '1071117148671',
    projectId: 'n-transport',
    storageBucket: 'n-transport.appspot.com',
    iosBundleId: 'com.viper.nTransport',
  );
}
