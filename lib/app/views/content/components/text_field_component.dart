import 'package:flutter/material.dart';
import 'package:text_tools/core/theme/app_typography.dart';

class TextFieldComponent extends StatelessWidget {
  const TextFieldComponent({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.white,
          child: Expanded(
            child: TextField(
              controller: controller,
              keyboardType: TextInputType.multiline,
              maxLines: 8,
              minLines: 8,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: size.height * .01,
          ),
          child: SizedBox(
            height: size.height * .05,
            width: size.width * .1,
            child: FlatButton(
              onPressed: controller.clear,
              child: Text(
                'Clear',
                style: AppTypography.clearTextButton(context),
              ),
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
