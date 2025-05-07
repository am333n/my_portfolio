import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/repo/about_me_model.dart';
import 'package:my_portfolio/styles/txt.dart';
import 'package:my_portfolio/widgets/responsive_layout_builder.dart';
import 'package:my_portfolio/widgets/spacers.dart';

class ExperienceNumberRow extends StatelessWidget {
  const ExperienceNumberRow({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutBuilder(
        mobileScreenLayout: _webLayout(context),
        tabletScreenLayout: _webLayout(context),
        webScreenLayout: _webLayout(context));
  }

  Row _webLayout(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          child: experienceNumberText(context,
              number: myAboutMe.yearsOfExperience,
              subtitle: 'Years of experience'),
        ),
        const HorizontalSpacing(15),
        Flexible(
          child: experienceNumberText(context,
              number: myAboutMe.projectsCompleted,
              subtitle: 'Projects Completed'),
        ),
      ],
    );
  }

  Column experienceNumberText(BuildContext context,
      {required String number, required String subtitle}) {
    final double fontSize = 30;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            text: TextSpan(children: [
          txtSpan(context,
              text: '+',
              style: TxtStyle.headerLSemiBold,
              color: AppColors.primary,
              fontSize: fontSize),
          txtSpan(context,
              text: number,
              style: TxtStyle.headerLSemiBold,
              color: AppColors.fontPrimary,
              fontSize: fontSize),
        ])),
        Txt(
          subtitle.toUpperCase(),
          style: TxtStyle.headerXSRegular,
          color: AppColors.fontSecondary,
        )
      ],
    );
  }
}
