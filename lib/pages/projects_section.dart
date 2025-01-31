import 'package:flutter/material.dart';
import 'package:my_portfolio/core/app_card.dart';
import 'package:my_portfolio/core/common_widget.dart';
import 'package:my_portfolio/core/screen_size_widget.dart';
import 'package:my_portfolio/repo/profile_details_model.dart';
import 'package:my_portfolio/repo/projects_model.dart';
import 'package:my_portfolio/service/responsiveness.dart';
import 'package:my_portfolio/styles/txt.dart';
import 'package:my_portfolio/widgets/spacers.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple.withOpacity(0.2),
      child: ScreenSizeWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonWidget.dualToneTitle(context, title: 'recent Projects'),
            const VerticalSpacing(30),
            SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.6,
                child: _buildProjectList())
          ],
        ),
      ),
    );
  }

  Scrollbar _buildProjectList() {
    return Scrollbar(
      child: ListView.separated(
          itemCount: myProjects.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => HorizontalSpacing(20),
          itemBuilder: (context, index) {
            final project = myProjects[index];
            return AppCard(
                child: SizedBox(
              width: Responsiveness.isTabletOrWeb(context)
                  ? MediaQuery.sizeOf(context).width * 0.2
                  : MediaQuery.sizeOf(context).width * 0.3,
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.amber,
                  ),
                  HorizontalSpacing(10),
                  Txt(project.projectName),
                  HorizontalSpacing(10),
                  Txt(project.roleDescription ?? ''),
                ],
              ),
            ));
          }),
    );
  }
}
