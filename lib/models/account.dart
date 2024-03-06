import 'package:flutter/material.dart';

class AccountModel extends ChangeNotifier {
  late String id = "";
  late String password = "";
  late String passwordConfirm = "";


  void setId (String id) {
    this.id = id;
    notifyListeners();
  }
}