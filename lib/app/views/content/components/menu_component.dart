import 'package:flutter/material.dart';
import 'package:text_tools/core/theme/app_colors.dart';
import 'package:text_tools/core/utils.dart';

import 'tool_text_item_component.dart';

class MenuComponent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width * .33,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.horizontal(
          right: Radius.circular(24),
        ),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Spacer(),
        ...textTools
            .map(
              (tool) => ToolTextItemComponent(
                tool: tool,
              )
            )
            .toList(),
        Spacer(),
      ]),
    );
  }
}
