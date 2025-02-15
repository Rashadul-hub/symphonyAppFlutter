
import 'package:flutter/material.dart';
import 'package:symphony_app/core/utils/pref_utils.dart';

class ThemeProvider extends ChangeNotifier{
  themeChange(String themeType)async{
    PrefUtils().setThemeData(themeType);
    notifyListeners();
  }
}