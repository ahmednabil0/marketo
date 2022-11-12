import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TestMoel extends ChangeNotifier {
  Locale? locale;

  SharedPreferences? pref;

  changeLocal(int i) async {
    if (i == 0) {
      locale = const Locale('ar');
    }
    if (i == 1) {
      locale = const Locale('en');
    }
    notifyListeners();
  }
}
