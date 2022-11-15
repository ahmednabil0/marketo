import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthViewModel extends ChangeNotifier {
  FirebaseAuth auth = FirebaseAuth.instance;
  bool islogined = false;

  // ckeck auth state
  ckeckLogined() {
    auth.authStateChanges().listen((User? user) {
      if (user == null) {
        islogined = false;
      } else {
        islogined = true;
      }
    });
    notifyListeners();
  }
  //end

  //sign in methd
  //start
  Future<void> signInFB(String email, String password) async {}
}
