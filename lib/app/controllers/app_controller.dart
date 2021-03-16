import 'package:flutter/material.dart';
import 'package:text_tools/core/utils.dart';

class AppController with ChangeNotifier {
  String text = '';
  void toUpperCase(String value) {
    text = value.toUpperCase();
    notifyListeners();
  }

  String textToolType = textTools.first;

  void changeTextTool(String value) {
    textToolType = value;
    notifyListeners();
  }
}
