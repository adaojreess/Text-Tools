import 'package:flutter/material.dart';
import 'package:text_tools/core/theme/app_colors.dart';
import 'package:text_tools/core/utils.dart';

import 'components/menu_component.dart';

class ContentPage extends StatefulWidget {
  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  String _currentTexTool = textTools.first;

  void changeCurrentTextTool(String value) {
    setState(() {
      if (_currentTexTool == value) return;
      _currentTexTool = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: AppColors.secondaryColor,
        child: Row(
          children: [
            MenuComponent(
              currentTextTools: _currentTexTool,
              changeCurrentTextTool: changeCurrentTextTool,
            ),
            Expanded(
              child: Container(
                height: size.height,
                width: size.width * .33,
                color: AppColors.secondaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
