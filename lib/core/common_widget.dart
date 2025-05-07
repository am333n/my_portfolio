import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/service/responsiveness.dart';
import 'package:my_portfolio/styles/txt.dart';

class CommonWidget {
  static Row dualToneTitle(BuildContext context,
      {double fontSize = 45, required String title}) {
    List<String> result = splitWord(title);
    return Row(
      mainAxisAlignment: Responsiveness.isMobile(context)
          ? MainAxisAlignment.center
          : MainAxisAlignment.start,
      children: [
        Flexible(
          // Prevents text overflow
          child: RichText(
            textAlign: Responsiveness.isMobile(context)
                ? TextAlign.center
                : TextAlign.start,
            overflow: TextOverflow.visible, // Ensures text wraps
            softWrap: true,
            text: TextSpan(children: [
              txtSpan(context,
                  text: result[0].toUpperCase(),
                  style: TxtStyle.headerLBold,
                  color: AppColors.fontPrimary,
                  letterHeight: 0.9,
                  overflow: TextOverflow.visible,
                  fontSize: fontSize),
              txtSpan(context,
                  text: result[1].toUpperCase(),
                  style: TxtStyle.headerLBold,
                  color: AppColors.grey,
                  letterHeight: 0.9,
                  overflow: TextOverflow.visible,
                  fontSize: fontSize),
            ]),
          ),
        ),
      ],
    );
  }

  static List<String> splitWord(String word) {
    // Find the index of the first space
    int spaceIndex = word.indexOf(' ');

    // If no space is found, return the entire word as the first part (with \n) and an empty string as the second part
    if (spaceIndex == -1) {
      return ['$word\n', ""];
    }

    // Split the word into two parts
    String firstPart = word.substring(0, spaceIndex) +
        '\n'; // Add \n to the end of the first part
    String secondPart = word.substring(spaceIndex + 1);

    return [firstPart, secondPart];
  }
}
