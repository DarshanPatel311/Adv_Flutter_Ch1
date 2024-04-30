import 'package:flutter/widgets.dart';

class ThemeProvider extends ChangeNotifier{
  bool isDark=false;
  void ChangeTheme(bool value){
    isDark=value;
    notifyListeners();
  }
}