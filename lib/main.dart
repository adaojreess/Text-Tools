import 'package:flutter/material.dart';
import 'package:text_tools/theme/app_colors.dart';
import 'package:text_tools/views/content/content_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: ContentPage(),
    );
  }
}
