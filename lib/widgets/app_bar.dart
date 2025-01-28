import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/constants/padding.dart';
import 'package:my_portfolio/styles/text_styles.dart';
import 'package:my_portfolio/widgets/expandable_text_button.dart';

class ResponsiveAppBar extends StatelessWidget {
  const ResponsiveAppBar({super.key, required this.scrollController});
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 1, color: AppColors.fontPrimary))),
      child: Padding(
        padding: AppPadding.mediumPadding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Txt(
              "Muhammed Ameen",
              textStyle: TextStyles.bodyLSemiBold,
            ),
            Txt(
              "Kerala , India",
              textStyle: TextStyles.bodyLSemiBold,
            ),
            ExpandableTextButton(
              text: 'Projects',
              onPressed: () {
                scrollController.animateTo(MediaQuery.sizeOf(context).height,
                    duration: Durations.extralong3, curve: Curves.easeIn);
              },
            )
          ],
        ),
      ),
    );
  }
}
