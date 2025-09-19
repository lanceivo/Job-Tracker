import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBkVxXj3a293nt48q9dhpMaR-V-ZDdhbFo",
            authDomain: "job-tracker-plip0o.firebaseapp.com",
            projectId: "job-tracker-plip0o",
            storageBucket: "job-tracker-plip0o.firebasestorage.app",
            messagingSenderId: "290330101499",
            appId: "1:290330101499:web:c0a74f38bb4a2f5941125e"));
  } else {
    await Firebase.initializeApp();
  }
}
