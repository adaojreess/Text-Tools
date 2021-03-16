import 'package:flutter/material.dart';

class AppTypography {
  static TextStyle? toolsText(BuildContext context) {
    return Theme.of(context).textTheme.headline6;
  }

  static TextStyle? toolsSelectedText(BuildContext context) {
    return toolsText(context)!.copyWith(fontWeight: FontWeight.bold);
  }
}
