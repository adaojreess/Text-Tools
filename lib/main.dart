import 'package:flutter/material.dart';
import 'package:text_tools/app/app.dart';
import 'package:text_tools/app/controllers/app_controller.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => AppController(),
      child: App(),
    ),
  );
}
