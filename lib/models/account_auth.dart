import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

enum AuthStatus {
  registerSuccess,
  registerFail,
  loginSuccess,
  loginFail
}

class FirebaseAuthProvider with ChangeNotifier {
  late FirebaseAuth authClient;
  late User? user = FirebaseAuth.instance.currentUser;

  FirebaseAuthProvider({auth}) : authClient = auth ?? FirebaseAuth.instance;

  Future<AuthStatus> registerWithEmail(String email, String password) async {
    try {
      UserCredential credential = await authClient.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseAuth.instance.currentUser?.sendEmailVerification(); // 이메일 인증
      return AuthStatus.registerSuccess;
    } catch (e) {
      return AuthStatus.registerFail;
    }
  }

}
