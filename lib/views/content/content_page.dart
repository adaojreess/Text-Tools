import 'package:flutter/material.dart';
import 'package:text_tools/theme/app_colors.dart';

class ContentPage extends StatefulWidget {
  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Container(
              height: size.height,
              width: size.width * .33,
              color: AppColors.primaryColor,
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
