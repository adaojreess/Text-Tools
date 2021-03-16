import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_tools/app/controllers/app_controller.dart';
import 'package:text_tools/core/theme/app_colors.dart';
import 'package:text_tools/core/utils.dart';

import 'components/menu_component.dart';
import 'components/result_component.dart';
import 'components/text_field_component.dart';

class ContentPage extends StatefulWidget {
  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  @override
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: AppColors.secondaryColor,
        child: Row(
          children: [
            MenuComponent(),
            Expanded(
              child: Container(
                height: size.height,
                width: size.width * .33,
                color: AppColors.secondaryColor,
                margin:
                    EdgeInsets.symmetric(horizontal: (size.width * 0.33) / 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFieldComponent(
                        controller:
                            Provider.of<AppController>(context, listen: false)
                                .textController),
                    SizedBox(height: size.height * .1),
                    ResultComponent(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
