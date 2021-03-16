import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:text_tools/app/controllers/app_controller.dart';
import 'package:text_tools/core/theme/app_colors.dart';
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
              crossAxisAlignment: CrossAxisAlignment.start,
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
              onPressed: () {
                Clipboard.setData(ClipboardData(
                  text: Provider.of<AppController>(context, listen: false).text,
                ));

                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text('Copied to the clipboard'),
                ));
              },
              child: Text(
                'Copy',
                style: AppTypography.copyTextButton(context),
              ),
              color: AppColors.buttonColor,
            ),
          ),
        )
      ],
    );
  }
}
