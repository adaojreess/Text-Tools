import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_tools/app/controllers/app_controller.dart';
import 'package:text_tools/core/theme/app_typography.dart';

class ResultComponent extends StatelessWidget {
  const ResultComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: size.height * 0.25,
          width: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Consumer<AppController>(
                  builder: (_, appController, child) =>
                      Text(appController.text),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: size.height * .01,
          ),
          child: SizedBox(
            height: size.height * .05,
            width: size.width * .15,
            child: FlatButton(
              onPressed: () {},
              child: Text(
                'Copy',
                style: AppTypography.copyTextButton(context),
              ),
              color: Colors.green,
            ),
          ),
        )
      ],
    );
  }
}
