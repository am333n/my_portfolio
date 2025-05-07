import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/core/app_card.dart';
import 'package:my_portfolio/core/common_widget.dart';
import 'package:my_portfolio/core/screen_size_widget.dart';
import 'package:my_portfolio/repo/experience_model.dart';
import 'package:my_portfolio/service/launcher.dart';
import 'package:my_portfolio/styles/txt.dart';
import 'package:my_portfolio/widgets/spacers.dart';

class ExpereienceSection extends StatelessWidget {
  const ExpereienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSizeWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CommonWidget.dualToneTitle(context, title: 'MY Experience'),
          ListView.builder(
              itemCount: myExperience.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final experience = myExperience[index];
                return AppCard(
                    onPressed: (experience.websiteUrl != null)
                        ? () {
                            Launcher.openNewTab('https://ceroen.com/');
                          }
                        : null,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Txt(
                          experience.companyName,
                          style: TxtStyle.headerSSemiBold,
                        ),
                        VerticalSpacing(10),
                        Txt('Position:  ${experience.position}'),
                        VerticalSpacing(10),
                        Txt(
                          experience.description,
                          color: AppColors.fontSecondary,
                        ),
                        VerticalSpacing(10),
                        RichText(
                            text: TextSpan(children: [
                          txtSpan(context,
                              text: experience.begin,
                              color: AppColors.fontSecondary),
                          txtSpan(context,
                              text: ' - ', color: AppColors.fontSecondary),
                          txtSpan(context,
                              text: experience.end,
                              color: AppColors.fontSecondary),
                        ]))
                      ],
                    ));
              })
        ],
      ),
    );
  }
}
