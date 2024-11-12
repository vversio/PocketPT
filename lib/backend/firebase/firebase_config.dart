import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDt7b1mpULaWSPbL6suR-mPe54Qq2tvv8g",
            authDomain: "pocketpt-29438.firebaseapp.com",
            projectId: "pocketpt-29438",
            storageBucket: "pocketpt-29438.firebasestorage.app",
            messagingSenderId: "1094625196051",
            appId: "1:1094625196051:web:c9ce92a227aa9c73efe7e6",
            measurementId: "G-M5Q3VR3WSK"));
  } else {
    await Firebase.initializeApp();
  }
}
