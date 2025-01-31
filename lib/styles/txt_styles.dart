import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/styles/txt.dart';

enum FontSize { regular, small, large }

class FontSpecifications {
  final double sizeNormal;
  final double sizeLarge;
  final double sizeSmall;
  final FontWeight fontWeight;

  FontSpecifications(
    this.sizeNormal,
    this.sizeLarge,
    this.sizeSmall,
    this.fontWeight,
  );
}

class TextStyles {
  //fontWeights
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight regular = FontWeight.w400;

  static final Map<TxtStyle, FontSpecifications> _fonts = {
    TxtStyle.bodyLRegular: FontSpecifications(14, 16, 12, regular),
    TxtStyle.bodyLSemiBold: FontSpecifications(14, 16, 12, semiBold),
    TxtStyle.bodyLBold: FontSpecifications(14, 16, 12, bold),
    TxtStyle.bodyMRegular: FontSpecifications(12, 14, 10, regular),
    TxtStyle.bodyMSemiBold: FontSpecifications(12, 14, 10, semiBold),
    TxtStyle.bodyMBold: FontSpecifications(12, 14, 10, bold),
    TxtStyle.bodySRegular: FontSpecifications(10, 12, 8, regular),
    TxtStyle.bodySSemiBold: FontSpecifications(10, 12, 8, semiBold),
    TxtStyle.bodySBold: FontSpecifications(10, 12, 8, bold),
    TxtStyle.headerXSRegular: FontSpecifications(16, 18, 14, regular),
    TxtStyle.headerXSSemiBold: FontSpecifications(16, 18, 14, semiBold),
    TxtStyle.headerXSBold: FontSpecifications(16, 18, 14, bold),
    TxtStyle.headerSRegular: FontSpecifications(20, 22, 18, regular),
    TxtStyle.headerSSemiBold: FontSpecifications(20, 22, 18, semiBold),
    TxtStyle.headerSBold: FontSpecifications(20, 22, 18, bold),
    TxtStyle.headerMRegular: FontSpecifications(22, 24, 20, regular),
    TxtStyle.headerMSemiBold: FontSpecifications(22, 24, 20, semiBold),
    TxtStyle.headerMBold: FontSpecifications(22, 24, 20, bold),
    TxtStyle.headerLRegular: FontSpecifications(34, 36, 32, regular),
    TxtStyle.headerLSemiBold: FontSpecifications(34, 36, 32, semiBold),
    TxtStyle.headerLBold: FontSpecifications(34, 36, 32, bold),
    TxtStyle.labelLRegular: FontSpecifications(10, 12, 8, regular),
    TxtStyle.labelLSemiBold: FontSpecifications(10, 12, 8, semiBold),
    TxtStyle.labelLBold: FontSpecifications(10, 12, 8, bold),
    TxtStyle.labelSRegular: FontSpecifications(8, 10, 6, regular),
    TxtStyle.labelSSemiBold: FontSpecifications(8, 10, 6, semiBold),
    TxtStyle.labelSBold: FontSpecifications(8, 10, 6, bold),
  };

  static TextStyle getTextStyle(BuildContext context, TxtStyle style,
      {double? letterSpacing,
      Color? color,
      TextOverflow? overflow,
      double? fontSize,
      double? height,
      FontStyle? fontStyle}) {
    FontSpecifications fontSpec = _fonts[style]!;

    double adjustedFontSize =
        getFontSize(context, fontSize ?? fontSpec.sizeNormal);

    return customTextStyle(
      fontSize: adjustedFontSize,
      fontWeight: fontSpec.fontWeight,
      letterSpacing: letterSpacing,
      height: height,
      color: color ?? getFontColor(fontStyle, context),
      overflow: overflow,
    );
  }

  static double getFontSize(BuildContext context, double baseSize) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 600) {
      // Mobile
      return baseSize;
    } else if (screenWidth < 1200) {
      // Tablet
      return baseSize * 1.2;
    } else {
      // Web/Desktop
      return baseSize * 1.4;
    }
  }

  static Color? getFontColor(FontStyle? fontStyle, BuildContext context) {
    switch (fontStyle) {
      case FontStyle.primary:
        return AppColors.fontPrimary;
      case FontStyle.secondary:
        return AppColors.secondary;
      case FontStyle.territiary:
        return AppColors.fontPrimary;
      default:
        return AppColors.fontPrimary;
    }
  }

  static TextStyle customTextStyle({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    double? letterSpacing,
    double? height,
    FontFamily? fontFamily,
    TextOverflow? overflow,
  }) {
    return GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        letterSpacing: letterSpacing,
        height: height,
        textStyle: TextStyle());
  }
}
