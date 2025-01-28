import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/padding.dart';
import 'package:my_portfolio/pages/project_details_page.dart';
import 'package:my_portfolio/repo/projects_model.dart';
import 'package:my_portfolio/styles/text_styles.dart';
import 'package:my_portfolio/widgets/expandable_text_button.dart';
import 'package:my_portfolio/widgets/page_size_container.dart';
import 'package:my_portfolio/widgets/project_tile.dart';
import 'package:my_portfolio/widgets/spacers.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageSizeContainer(
        colors: [AppColors.black, AppColors.black],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: AppPadding.mediumPadding,
              child: Txt(
                "PROJECTS",
                textStyle: TextStyles.headingLBold,
                fontColor: AppColors.white,
                fontFamily: FontFamily.publicSans,
                fontSize: 40,
              ),
            ),
            Expanded(
              child: ProjectView(),
            ),
            VerticalSpacing(20),
          ],
        ));
  }
}

class ProjectView extends StatelessWidget {
  const ProjectView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: myProjects.length,
        itemBuilder: (context, index) {
          final project = myProjects[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ProjectTile(
                key: UniqueKey(),
                projectName: project.projectName,
                imageUrl:
                    'https://images-porsche.imgix.net/-/media/D9863281BEC14473AE2EAD15A724142B_E84A5DFE8F4347BABEEEF9C28F9D4F40_Berlin---Desktop?iar=0&w=999&ar=3%3A4&q=85&auto=format',
                onPressed: () {
                  showGeneralDialog(
                      context: context,
                      pageBuilder: (context, a, b) {
                        return ProjectDetailsPage(projectDetails: project);
                      });
                }),
          );
        });
  }
}
