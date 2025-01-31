import 'package:flutter/material.dart';
import 'package:my_portfolio/core/app_card.dart';
import 'package:my_portfolio/core/common_widget.dart';
import 'package:my_portfolio/core/image_displayer.dart';
import 'package:my_portfolio/core/screen_size_widget.dart';
import 'package:my_portfolio/repo/skill_model.dart';
import 'package:my_portfolio/service/responsiveness.dart';
import 'package:my_portfolio/styles/txt.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSizeWidget(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonWidget.dualToneTitle(context, title: 'MY Skills'),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 items per row
            childAspectRatio: 4 / 2, // Grid item is a rectangle
          ),
          itemCount: mySkills.length,
          itemBuilder: (context, index) {
            final skill = mySkills[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppCard(
                child: Row(
                  children: [
                    // Container with width/height constraints, max 150x150
                    ImageDisplayer(imageURL: skill.url),
                    const SizedBox(width: 10), // Space between image and title
                    // Title next to the image
                    Expanded(
                      child: Txt(
                        skill.title,
                        style: TxtStyle.bodyLSemiBold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    ));
  }
}
