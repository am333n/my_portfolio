import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/padding.dart';
import 'package:my_portfolio/styles/text_styles.dart';
import 'package:my_portfolio/widgets/app_bar.dart';
import 'package:my_portfolio/widgets/page_size_container.dart';
import 'package:my_portfolio/widgets/spacers.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key, required this.scrollController});
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return PageSizeContainer(
        colors: [AppColors.backgroundPrimary, AppColors.backgroundPrimary],
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 20,
              child: Txt(
                '2\n0\n2\n4',
                textStyle: TextStyles.headingLBold,
                fontSize: 80,
                fontColor: AppColors.primary,
              ),
            ),
            Column(
              children: [
                ResponsiveAppBar(
                  scrollController: scrollController,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Padding(
                        padding: AppPadding.mediumPadding,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Txt(
                              'Muhammed Ameen',
                              textStyle: TextStyles.bodyLBold,
                              fontSize: 25,
                            ),
                            const Txt(
                              'FLUTTER\nDEVELOPER',
                              fontSize: 60,
                              fontFamily: FontFamily.publicSans,
                              textStyle: TextStyles.headingLBold,
                            ),
                            const VerticalSpacing(30),
                            _detailWithHeading(context,
                                heading: 'about',
                                details:
                                    "Ameen (He/Him) is a skilled mobile developer with a Bachelor of Computer Application from Calicut University, Kerala, India. Specializing in Flutter and state management, he excels in building user-friendly applications. Passionate about solving complex problems, Ameen is always eager to connect on innovative projects or ideas."),
                            const VerticalSpacing(10),
                            _detailWithHeading(context,
                                heading: 'Experience',
                                details:
                                    "Ceroen Software Solutions Pvt Ltd:\n2023 - Present")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  Column _detailWithHeading(BuildContext context,
      {required String heading, required String details}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Txt(
          heading.toUpperCase(),
          textStyle: TextStyles.bodyLRegular,
          fontColor: AppColors.fontSecondary,
        ),
        SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.4,
            child: Txt(
              details,
              textStyle: TextStyles.bodyLRegular,
            )),
      ],
    );
  }
}
