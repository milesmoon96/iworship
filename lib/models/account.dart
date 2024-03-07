import 'package:flutter/material.dart';

class AccountModel extends ChangeNotifier {
  late String email = "";
  late String password = "";
  late String passwordConfirm = "";


  void setEmail (String email) {
    this.email = email;
    notifyListeners();
  }

  void setPassword (String password) {
    this.password = password;
    notifyListeners();
  }

  void setPasswordConfirm (String passwordConfirm) {
    this.passwordConfirm = passwordConfirm;
    notifyListeners();
  }
  
}