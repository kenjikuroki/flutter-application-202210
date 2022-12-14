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
    apiKey: 'AIzaSyBMXzhKRttlbhxO0emh7OvrZbDBZQ4C8Ks',
    appId: '1:343831134645:web:acd3ecb3a1035ef3bad9fc',
    messagingSenderId: '343831134645',
    projectId: 'fir-sample-app-6b1fb',
    authDomain: 'fir-sample-app-6b1fb.firebaseapp.com',
    storageBucket: 'fir-sample-app-6b1fb.appspot.com',
    measurementId: 'G-WKGEL283GR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC6MHywVeFEmsafjYqfRfkI9Hml3Fy6nSE',
    appId: '1:343831134645:android:8e65832f426e4a58bad9fc',
    messagingSenderId: '343831134645',
    projectId: 'fir-sample-app-6b1fb',
    storageBucket: 'fir-sample-app-6b1fb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAjxRAR27nCnwfDGQDkAy6PGbftOPSQkwc',
    appId: '1:343831134645:ios:5221c5c470c86300bad9fc',
    messagingSenderId: '343831134645',
    projectId: 'fir-sample-app-6b1fb',
    storageBucket: 'fir-sample-app-6b1fb.appspot.com',
    iosClientId: '343831134645-nntk1nboopjlbmbjsn8spummkj64tand.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAjxRAR27nCnwfDGQDkAy6PGbftOPSQkwc',
    appId: '1:343831134645:ios:5221c5c470c86300bad9fc',
    messagingSenderId: '343831134645',
    projectId: 'fir-sample-app-6b1fb',
    storageBucket: 'fir-sample-app-6b1fb.appspot.com',
    iosClientId: '343831134645-nntk1nboopjlbmbjsn8spummkj64tand.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1',
  );
}
