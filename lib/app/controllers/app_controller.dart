import 'package:flutter/material.dart';
import 'package:text_tools/core/utils.dart';

class AppController with ChangeNotifier {
  final textController = TextEditingController();

  AppController() {
    textController.addListener(() {
      changeText();
    });
  }

  String text = '';
  void changeText({bool notifier = true}) {
    switch (textToolType) {
      case 'Text to lowercase':
        text = textController.text.toLowerCase();
        break;
      case 'Text to camelCase':
        text = _toCamelCase(textController.text);
        break;
      case 'Text to kebab-case':
        text = _toKebabCase(textController.text);
        break;
      case 'Text to snake_case':
        text = _toSnakeCase(textController.text);
        break;
      case 'Text to Title Case':
        text = _toTitleCase(textController.text);
        break;
      case 'Capitalize text':
        text = _capitalize(textController.text);
        break;
      case 'Invert Text Case':
        text = _toInvertCase(textController.text);
        break;
      case 'Text to UPPERCASE':
      default:
        text = textController.text.toUpperCase();
        break;
    }
    if (notifier) {
      notifyListeners();
    }
  }

  String textToolType = textTools.first;

  void changeTextTool(String value) {
    if (value == textToolType) return;
    textToolType = value;
    changeText(notifier: false);
    notifyListeners();
  }

  String _toCamelCase(String value) {
    if (value.isEmpty || value.trim().isEmpty) return '';
    String s = value
        .replaceAllMapped(
            RegExp(
                r'[A-Z]{2,}(?=[A-Z][a-z]+[0-9]*|\b)|[A-Z]?[a-z]+[0-9]*|[A-Z]|[0-9]+'),
            (Match m) =>
                "${m[0]![0].toUpperCase()}${m[0]!.substring(1).toLowerCase()}")
        .replaceAll(RegExp(r'(_|-|\s)+'), '');
    return s[0].toLowerCase() + s.substring(1);
  }

  String _toKebabCase(String value) {
    if (value.isEmpty || value.trim().isEmpty) return '';
    return value
        .replaceAllMapped(
            RegExp(
                r'[A-Z]{2,}(?=[A-Z][a-z]+[0-9]*|\b)|[A-Z]?[a-z]+[0-9]*|[A-Z]|[0-9]+'),
            (Match m) => "${m[0]!.toLowerCase()}")
        .replaceAll(RegExp(r'(_|\s)+'), '-');
  }

  String _toSnakeCase(String value) {
    if (value.isEmpty || value.trim().isEmpty) return '';
    return value
        .replaceAllMapped(
            RegExp(
                r'[A-Z]{2,}(?=[A-Z][a-z]+[0-9]*|\b)|[A-Z]?[a-z]+[0-9]*|[A-Z]|[0-9]+'),
            (Match m) => "${m[0]!.toLowerCase()}")
        .replaceAll(RegExp(r'(-|\s)+'), '_');
  }

  String _toTitleCase(String value) {
    if (value.isEmpty || value.trim().isEmpty) return '';
    return value
        .replaceAllMapped(
            RegExp(
                r'[A-Z]{2,}(?=[A-Z][a-z]+[0-9]*|\b)|[A-Z]?[a-z]+[0-9]*|[A-Z]|[0-9]+'),
            (Match m) =>
                "${m[0]![0].toUpperCase()}${m[0]!.substring(1).toLowerCase()}")
        .replaceAll(RegExp(r'(_|-)+'), ' ');
  }

  String _capitalize(String value, {bool lowerRest = false}) {
    if (value.isEmpty || value.trim().isEmpty) return '';
    return value[0].toUpperCase() +
        (lowerRest ? value.substring(1).toLowerCase() : value.substring(1));
  }

  String _toInvertCase(String value) {
    if (value.isEmpty || value.trim().isEmpty) return '';
    String newStr = '';
    value.codeUnits.forEach((v) {
      final _value = String.fromCharCode(v);
      if (_value.toUpperCase() == _value) {
        newStr += _value.toLowerCase();
      } else {
        newStr += _value.toUpperCase();
      }
    });
    return newStr;
  }
}
