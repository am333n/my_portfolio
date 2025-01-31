import 'package:flutter/material.dart';
import 'package:my_portfolio/core/common_widget.dart';
import 'package:my_portfolio/core/screen_size_widget.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSizeWidget(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [CommonWidget.dualToneTitle(context, title: 'MY Skills')],
    ));
  }
}
