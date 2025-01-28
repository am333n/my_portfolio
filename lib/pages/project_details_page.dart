import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/padding.dart';
import 'package:my_portfolio/repo/projects_model.dart';
import 'package:my_portfolio/styles/text_styles.dart';
import 'package:my_portfolio/widgets/page_size_container.dart';
import 'package:my_portfolio/widgets/spacers.dart';

class ProjectDetailsPage extends StatelessWidget {
  const ProjectDetailsPage({super.key, required this.projectDetails});
  final ProjectsModel projectDetails;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: PageSizeContainer(
          colors: [AppColors.black, AppColors.black],
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      color: Colors.blue,
                      height: MediaQuery.sizeOf(context).height * 0.6,
                      width: MediaQuery.sizeOf(context).width,
                      child: Image.network(
                        'https://images-porsche.imgix.net/-/media/D9863281BEC14473AE2EAD15A724142B_E84A5DFE8F4347BABEEEF9C28F9D4F40_Berlin---Desktop?iar=0&w=999&ar=3%3A4&q=85&auto=format',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                        right: 16,
                        top: 16,
                        child: IconButton(
                            color: AppColors.white.withOpacity(0.5),
                            hoverColor: AppColors.primary,
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.close,
                              color: AppColors.white,
                            ))),
                  ],
                ),
                Padding(
                  padding: AppPadding.mediumPadding,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Txt(
                            projectDetails.projectName,
                            textStyle: TextStyles.headingLBold,
                            fontColor: AppColors.white,
                            fontFamily: FontFamily.publicSans,
                            fontSize: 25,
                          ),
                          const VerticalSpacing(10),
                          Txt(
                            projectDetails.projectCategory ?? '-',
                            textStyle: TextStyles.bodyLRegular,
                            fontColor: AppColors.fontSecondary,
                          ),
                          Row(
                            children: [
                              IconButton(
                                  highlightColor: Colors.amber,
                                  onPressed: () {},
                                  icon: const FaIcon(
                                      FontAwesomeIcons.googlePlay)),
                              IconButton(
                                  onPressed: () {},
                                  icon: const FaIcon(FontAwesomeIcons.appStore))
                            ],
                          )
                        ],
                      ),
                      HorizontalSpacing(50),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              _buildDetails("Description",
                                  projectDetails.projectDescription ?? "-"),
                              HorizontalSpacing(30),
                              _buildDetails("Role",
                                  projectDetails.roleDescription ?? "-"),
                            ],
                          ),
                          _buildDetails('Company', projectDetails.company ?? '')
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }

  Column _buildDetails(String title, String details) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Txt(
          title,
          fontColor: AppColors.fontSecondary,
        ),
        Txt(
          details,
          fontColor: Colors.white,
        ),
      ],
    );
  }
}
