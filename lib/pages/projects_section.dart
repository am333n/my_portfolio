import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/core/app_card.dart';
import 'package:my_portfolio/core/common_widget.dart';
import 'package:my_portfolio/core/image_displayer.dart';
import 'package:my_portfolio/core/screen_size_widget.dart';
import 'package:my_portfolio/repo/profile_details_model.dart';
import 'package:my_portfolio/repo/projects_model.dart';
import 'package:my_portfolio/service/launcher.dart';
import 'package:my_portfolio/service/responsiveness.dart';
import 'package:my_portfolio/styles/txt.dart';
import 'package:my_portfolio/widgets/spacers.dart';

class ProjectsSection extends StatelessWidget {
  ProjectsSection({super.key});
  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenSizeWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonWidget.dualToneTitle(context, title: 'recent Projects'),
            const VerticalSpacing(30),
            SizedBox(height: null, child: _buildProjectList(_controller))
          ],
        ),
      ),
    );
  }

  Scrollbar _buildProjectList(ScrollController scrollController) {
    return Scrollbar(
      controller: scrollController,
      child: ListView.separated(
          itemCount: myProjects.length,
          controller: scrollController,
          shrinkWrap: true,
          separatorBuilder: (context, index) => HorizontalSpacing(20),
          itemBuilder: (context, index) {
            final project = myProjects[index];
            return AppCard(
                child: SizedBox(
              child: Row(
                children: [
                  // ImageDisplayer(imageURL: myProfileDetails.image),
                  // HorizontalSpacing(15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Txt(
                              project.projectName,
                              style: TxtStyle.headerXSSemiBold,
                            ),
                            Row(
                              children: [
                                if (project.appStoreLink != null)
                                  IconButton(
                                      highlightColor:
                                          Responsiveness.isMobile(context)
                                              ? AppColors.primary
                                              : AppColors.grey,
                                      hoverColor: AppColors.primary,
                                      onPressed: () {
                                        Launcher.openNewTab(
                                            project.appStoreLink!);
                                      },
                                      icon: FaIcon(FontAwesomeIcons.appStore)),
                                HorizontalSpacing(10),
                                if (project.playStoreLink != null)
                                  IconButton(
                                      highlightColor:
                                          Responsiveness.isMobile(context)
                                              ? AppColors.primary
                                              : AppColors.grey,
                                      hoverColor: AppColors.primary,
                                      onPressed: () {
                                        Launcher.openNewTab(
                                            project.playStoreLink!);
                                      },
                                      icon: FaIcon(FontAwesomeIcons.googlePlay))
                              ],
                            )
                          ],
                        ),
                        VerticalScreenSpacing(0.01),
                        Txt(
                          "Role: ${project.roleDescription ?? ''}",
                          color: AppColors.fontSecondary,
                        ),
                        VerticalScreenSpacing(0.01),
                        Txt(
                          "Organization: ${project.oraganisation ?? ''}",
                          color: AppColors.fontSecondary,
                        ),
                        VerticalScreenSpacing(0.01),
                        Txt(
                          project.projectDescription ?? '',
                          color: AppColors.fontSecondary,
                        ),
                        VerticalScreenSpacing(0.01),
                        Txt(
                          "${project.tools ?? ''}",
                          color: AppColors.fontSecondary,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ));
          }),
    );
  }
}
