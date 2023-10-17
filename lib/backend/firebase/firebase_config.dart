import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB_Ih8O1yhVmN4-GPmtJSjxpBQSGA3egzo",
            authDomain: "answerproject-1bc53.firebaseapp.com",
            projectId: "answerproject-1bc53",
            storageBucket: "answerproject-1bc53.appspot.com",
            messagingSenderId: "803365726989",
            appId: "1:803365726989:web:ed758e4c84877179455e44"));
  } else {
    await Firebase.initializeApp();
  }
}
