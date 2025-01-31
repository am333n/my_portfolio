import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/about%20me%20section/about_me_page.dart';
import 'package:my_portfolio/pages/experience%20section/experience_section.dart';
import 'package:my_portfolio/pages/profile_details.dart';
import 'package:my_portfolio/pages/projects_section.dart';
import 'package:my_portfolio/widgets/spacers.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key, required this.scrollController});
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FractionallySizedBox(widthFactor: 0.9, child: ProfileDetails()),
            VerticalScreenSpacing(0.1),
            AboutMePage(scrollController: scrollController),
            VerticalScreenSpacing(0.1),
            ExpereienceSection(),
            VerticalScreenSpacing(0.1),
            ProjectsSection(),
            VerticalScreenSpacing(0.1),
          ],
        ),
      ),
    );
  }
}
