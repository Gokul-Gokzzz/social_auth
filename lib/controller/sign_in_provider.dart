import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInProvider extends ChangeNotifier {
  bool _isSignedIn = false;
  bool get isSignedIn => _isSignedIn;
  signIn() {
    checkUserSingIn();
  }

  checkUserSingIn() async {
    final SharedPreferences prefer = await SharedPreferences.getInstance();
    _isSignedIn = prefer.getBool("signed_in") ?? false;
    notifyListeners();
  }
}
