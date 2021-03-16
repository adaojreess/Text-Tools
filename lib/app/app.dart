import 'package:flutter/material.dart';

import 'views/content/content_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Text Tools',
      theme: ThemeData(),
      home: ContentPage(),
    );
  }
}
