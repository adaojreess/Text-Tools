import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_tools/app/controllers/app_controller.dart';
import 'package:text_tools/core/theme/app_typography.dart';

class ToolTextItemComponent extends StatelessWidget {
  const ToolTextItemComponent({Key? key, required this.tool}) : super(key: key);

  final String tool;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: (size.width * .3),
      padding: EdgeInsets.only(
        bottom: size.height * .01,
        top: size.height * .01,
        left: size.width * .01,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: size.width * .05,
        vertical: size.height * .01,
      ),
      child: InkWell(
        onTap: () => Provider.of<AppController>(context, listen: false)
            .changeTextTool(tool),
        child: Consumer<AppController>(
          builder: (_, appController, child) => Row(
            children: [
              Text(
                tool,
                style: appController.textToolType == tool
                    ? AppTypography.toolsSelectedText(context)
                    : AppTypography.toolsText(context),
              ),
              Spacer(),
              appController.textToolType == tool
                  ? Icon(Icons.arrow_back_ios_outlined, size: 30)
                  : SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
