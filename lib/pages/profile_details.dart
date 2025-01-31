import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/repo/profile_details_model.dart';
import 'package:my_portfolio/service/launcher.dart';
import 'package:my_portfolio/styles/txt.dart';
import 'package:my_portfolio/widgets/spacers.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: AppColors.backgroundSecondary,
          borderRadius: BorderRadius.circular(15),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildProfileImage(context),
              const VerticalSpacing(15),
              Txt(
                myProfileDetails.fullName,
                style: TxtStyle.headerLBold,
                fontSize: 25,
                color: Colors.black,
                textAlign: TextAlign.center,
              ),
              const VerticalSpacing(30),
              Txt(
                myProfileDetails.description,
                textAlign: TextAlign.center,
                color: Colors.black,
              ),
              const VerticalSpacing(15),
              _buildSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileImage(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double maxWidth = constraints.maxWidth; // Get the max available width
        double imageHeight = maxWidth * (5 / 4); // Maintain 4:5 aspect ratio

        return Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              width: maxWidth,
              height: imageHeight,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color(0xffd04204),
                    Color(0xff982000),
                  ],
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                myProfileDetails.image,
                fit: BoxFit.cover, // Ensures the image fills the container
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildSocialButtons() {
    return Wrap(
      spacing: 15, // Space between buttons
      runSpacing: 10, // Space between wrapped rows
      alignment: WrapAlignment.center,
      children: [
        _iconButton(
          icon: FontAwesomeIcons.envelope,
          onPressed: () {
            Launcher.openMail(myProfileDetails.email);
          },
        ),
        _iconButton(
          icon: FontAwesomeIcons.github,
          onPressed: () {
            Launcher.openNewTab(myProfileDetails.githubUrl);
          },
        ),
        _iconButton(
          icon: FontAwesomeIcons.linkedin,
          onPressed: () {
            Launcher.openNewTab(myProfileDetails.linkedinUrl);
          },
        ),
        _iconButton(
          icon: FontAwesomeIcons.file,
          onPressed: () {
            Launcher.openNewTab(myProfileDetails.cvUrl);
          },
        ),
      ],
    );
  }

  IconButton _iconButton(
      {required void Function()? onPressed, IconData? icon}) {
    return IconButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      icon: FaIcon(
        icon,
        color: AppColors.secondary,
      ),
    );
  }
}
