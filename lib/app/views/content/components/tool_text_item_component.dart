import 'package:flutter/material.dart';
import 'package:text_tools/core/theme/app_typography.dart';

class ToolTextItemComponent extends StatelessWidget {
  const ToolTextItemComponent(
      {Key? key,
      required this.tool,
      required this.onTap,
      this.isActive = false})
      : super(key: key);

  final String tool;
  final Function(String) onTap;
  final bool isActive;

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
        onTap: () => onTap(tool),
        child: Text(
          tool,
          style: isActive
              ? AppTypography.toolsSelectedText(context)
              : AppTypography.toolsText(context),
        ),
      ),
    );
  }
}
