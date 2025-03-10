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
    apiKey: 'AIzaSyDICerr22BONfwk4yo6uYdUDCwNmWPGfHI',
    appId: '1:750512927461:web:25b2cba061ef729b68da0c',
    messagingSenderId: '750512927461',
    projectId: 'aichatbot-dafa7',
    authDomain: 'aichatbot-dafa7.firebaseapp.com',
    storageBucket: 'aichatbot-dafa7.firebasestorage.app',
    measurementId: 'G-MGHZNTZ21L',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC5b94przD5ZiV-eVrY0BDOD8OiHh_hp5o',
    appId: '1:750512927461:android:bc8f4ee296eff62b68da0c',
    messagingSenderId: '750512927461',
    projectId: 'aichatbot-dafa7',
    storageBucket: 'aichatbot-dafa7.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDf-fLNnGXQ38nV5j3NCiSeV0pfQAC-wSg',
    appId: '1:750512927461:ios:42d222d26e28da3d68da0c',
    messagingSenderId: '750512927461',
    projectId: 'aichatbot-dafa7',
    storageBucket: 'aichatbot-dafa7.firebasestorage.app',
    iosBundleId: 'com.example.aiChatbot',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDf-fLNnGXQ38nV5j3NCiSeV0pfQAC-wSg',
    appId: '1:750512927461:ios:42d222d26e28da3d68da0c',
    messagingSenderId: '750512927461',
    projectId: 'aichatbot-dafa7',
    storageBucket: 'aichatbot-dafa7.firebasestorage.app',
    iosBundleId: 'com.example.aiChatbot',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDICerr22BONfwk4yo6uYdUDCwNmWPGfHI',
    appId: '1:750512927461:web:ecac54912b7d691b68da0c',
    messagingSenderId: '750512927461',
    projectId: 'aichatbot-dafa7',
    authDomain: 'aichatbot-dafa7.firebaseapp.com',
    storageBucket: 'aichatbot-dafa7.firebasestorage.app',
    measurementId: 'G-MXCQ4MD8DB',
  );
}
