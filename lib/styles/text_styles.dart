import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_colors.dart';

enum TextStyles {
  // Body styles
  bodyXSRegular,
  bodyXSSemiBold,
  bodyXSBold,
  bodyXSThin,
  bodySSemiBold,
  bodySBold,
  bodySRegular,
  bodySThin,
  bodyMRegular,
  bodyMSemiBold,
  bodyMBold,
  bodyMThin,
  bodyLRegular,
  bodyLSemiBold,
  bodyLBold,
  bodyLThin,

  // Heading styles
  headingXSRegular,
  headingXSSemiBold,
  headingXSBold,
  headingXSThin,
  headingSRegular,
  headingSSemiBold,
  headingSBold,
  headingSThin,
  headingMRegular,
  headingMSemiBold,
  headingMBold,
  headingMThin,
  headingLRegular,
  headingLSemiBold,
  headingLBold,
  headingLThin,
}

enum FontFamily {
  roboto,
  publicSans,
}

class Txt extends StatelessWidget {
  final String text;
  final TextStyles textStyle;
  final Color fontColor;
  final FontFamily fontFamily;
  final double? fontSize;
  final TextDirection? textDirection;
  final bool multiLine;

  const Txt(
    this.text, {
    super.key,
    this.textStyle = TextStyles.bodyLRegular,
    this.fontFamily = FontFamily.roboto,
    this.fontSize,
    this.fontColor = AppColors.fontPrimary,
    this.multiLine = true,
    this.textDirection,
  });

  TextStyle _getTextStyle() {
    // Define font family
    String fontFamilyName =
        fontFamily == FontFamily.roboto ? 'Roboto' : 'PublicSans';

    // Define text styles map
    final Map<TextStyles, TextStyle> textStylesMap = {
      // Body styles
      TextStyles.bodyXSRegular: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 8,
          fontWeight: FontWeight.normal),
      TextStyles.bodyXSSemiBold: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 8,
          fontWeight: FontWeight.w600),
      TextStyles.bodyXSBold: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 8,
          fontWeight: FontWeight.bold),
      TextStyles.bodyXSThin: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 8,
          fontWeight: FontWeight.w100),

      TextStyles.bodySSemiBold: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 10,
          fontWeight: FontWeight.w600),
      TextStyles.bodySBold: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 10,
          fontWeight: FontWeight.bold),
      TextStyles.bodySThin: TextStyle(
          fontFamily: fontFamilyName,
          fontSize: fontSize ?? 10,
          fontWeight: FontWeight.w100),
      TextStyles.bodySRegular: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 10,
          fontWeight: FontWeight.normal),

      TextStyles.bodyMSemiBold: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 12,
          fontWeight: FontWeight.w600),
      TextStyles.bodyMBold: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 12,
          fontWeight: FontWeight.bold),
      TextStyles.bodyMThin: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 12,
          fontWeight: FontWeight.w100),
      TextStyles.bodyMRegular: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 12,
          fontWeight: FontWeight.normal),

      TextStyles.bodyLSemiBold: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 14,
          fontWeight: FontWeight.w500),
      TextStyles.bodyLBold: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 14,
          fontWeight: FontWeight.w800),
      TextStyles.bodyLThin: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 14,
          fontWeight: FontWeight.w100),
      TextStyles.bodyLRegular: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 14,
          fontWeight: FontWeight.normal),

      // Heading styles
      TextStyles.headingXSRegular: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 14,
          fontWeight: FontWeight.normal),
      TextStyles.headingXSSemiBold: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 14,
          fontWeight: FontWeight.w600),
      TextStyles.headingXSBold: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 14,
          fontWeight: FontWeight.bold),
      TextStyles.headingXSThin: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 14,
          fontWeight: FontWeight.w100),

      TextStyles.headingSSemiBold: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 16,
          fontWeight: FontWeight.w600),
      TextStyles.headingSBold: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 16,
          fontWeight: FontWeight.bold),
      TextStyles.headingSThin: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 16,
          fontWeight: FontWeight.w100),
      TextStyles.headingSRegular: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 16,
          fontWeight: FontWeight.normal),

      TextStyles.headingMSemiBold: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 18,
          fontWeight: FontWeight.w600),
      TextStyles.headingMBold: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 18,
          fontWeight: FontWeight.bold),
      TextStyles.headingMThin: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 18,
          fontWeight: FontWeight.w100),
      TextStyles.headingMRegular: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 18,
          fontWeight: FontWeight.normal),

      TextStyles.headingLSemiBold: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 24,
          fontWeight: FontWeight.w600),
      TextStyles.headingLBold: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          height: .9,
          fontSize: fontSize ?? 24,
          fontWeight: FontWeight.bold),
      TextStyles.headingLThin: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 24,
          fontWeight: FontWeight.w100),
      TextStyles.headingLRegular: TextStyle(
          fontFamily: fontFamilyName,
          color: fontColor,
          fontSize: fontSize ?? 24,
          fontWeight: FontWeight.normal),
    };

    return textStylesMap[textStyle]!;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textDirection: textDirection,
      maxLines: multiLine ? null : 1,
      softWrap: true,
      style: _getTextStyle(),
    );
  }
}
