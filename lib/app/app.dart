import 'package:flutter/material.dart';

import 'views/content/content_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: ContentPage(),
    );
  }
}