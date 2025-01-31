import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/padding.dart';
import 'package:my_portfolio/core/common_widget.dart';
import 'package:my_portfolio/core/screen_size_widget.dart';
import 'package:my_portfolio/pages/about%20me%20section/components/experience_number_row.dart';
import 'package:my_portfolio/repo/about_me_model.dart';
import 'package:my_portfolio/styles/txt.dart';

import 'package:my_portfolio/widgets/page_size_container.dart';
import 'package:my_portfolio/widgets/spacers.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key, required this.scrollController});
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return ScreenSizeWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CommonWidget.dualToneTitle(context,
              title: myAboutMe.title, fontSize: 60),
          VerticalSpacing(20),
          Txt(
            myAboutMe.description,
            color: AppColors.fontSecondary,
          ),
          VerticalSpacing(20),
          FractionallySizedBox(widthFactor: 1, child: ExperienceNumberRow())
        ],
      ),
    );
  }
}
