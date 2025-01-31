import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/about%20me%20section/about_me_page.dart';
import 'package:my_portfolio/pages/experience%20section/experience_section.dart';
import 'package:my_portfolio/pages/profile_details.dart';
import 'package:my_portfolio/pages/projects_section.dart';
import 'package:my_portfolio/pages/skills_section.dart';
import 'package:my_portfolio/widgets/spacers.dart';

class WebLayout extends StatelessWidget {
  const WebLayout({
    super.key,
    required this.scrollController,
  });

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              flex: 3,
              child: Center(
                child: FractionallySizedBox(
                    // heightFactor: 0.8,
                    widthFactor: 0.7,
                    child: ProfileDetails()),
              )),
          Expanded(
              flex: 4,
              child: Container(
                // color: Colors.amber,
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        VerticalScreenSpacing(0.2),
                        AboutMePage(scrollController: scrollController),
                        VerticalScreenSpacing(0.1),
                        ExpereienceSection(),
                        VerticalScreenSpacing(0.1),
                        ProjectsSection(),
                        VerticalScreenSpacing(0.1),
                        SkillsSection(),
                        // VerticalSpacing(500)
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
