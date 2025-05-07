import 'package:flutter/material.dart';
import 'package:my_portfolio/styles/txt_styles.dart';

class Txt extends StatelessWidget {
  final double? width;
  final double? height;
  final FontStyle fontStyle;
  final double? letterSpacing;
  final double? letterHeight;
  final String text;
  final TxtStyle style;
  final TextAlign? textAlign;
  final int? maxLines;
  final Color? color;
  final double? fontSize;
  final bool isMultiLine;
  final TextOverflow overflow;

  const Txt(
    this.text, {
    super.key,
    this.style = TxtStyle.bodyLRegular,
    this.color,
    this.overflow = TextOverflow.ellipsis,
    this.width,
    this.height,
    this.maxLines,
    this.letterSpacing = 0,
    this.textAlign,
    this.fontStyle = FontStyle.primary,
    this.fontSize,
    this.isMultiLine = true,
    this.letterHeight,
  });

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyles.getTextStyle(context, style,
            letterSpacing: letterSpacing,
            color: color,
            overflow: overflow,
            height: letterHeight,
            fontStyle: fontStyle)
        .copyWith(fontSize: fontSize);

    return SizedBox(
      width: width,
      height: height,
      child: Text(
        text,
        textAlign: textAlign,
        softWrap: true,
        maxLines: isMultiLine ? maxLines : 1,
        style: textStyle,
        overflow: isMultiLine ? TextOverflow.visible : overflow,
      ),
    );
  }
}

enum FontStyle { primary, secondary, territiary }

TextSpan txtSpan(
  BuildContext context, {
  String? text,
  TxtStyle style = TxtStyle.bodyLRegular,
  Color? color,
  double? fontSize,
  double? letterSpacing,
  double? letterHeight,
  TextOverflow? overflow,
}) {
  return TextSpan(
      text: text,
      style: TextStyles.getTextStyle(
          context,
          letterSpacing: letterSpacing,
          color: color,
          height: letterHeight,
          overflow: overflow,
          style,
          fontSize: fontSize));
}

enum TxtStyle {
  bodyLRegular,
  bodyLSemiBold,
  bodyLBold,
  bodyMRegular,
  bodyMSemiBold,
  bodyMBold,
  bodySRegular,
  bodySSemiBold,
  bodySBold,
  headerXSRegular,
  headerXSSemiBold,
  headerXSBold,
  headerSRegular,
  headerSSemiBold,
  headerSBold,
  headerMRegular,
  headerMSemiBold,
  headerMBold,
  headerLRegular,
  headerLSemiBold,
  headerLBold,
  labelLRegular,
  labelLSemiBold,
  labelLBold,
  labelSRegular,
  labelSSemiBold,
  labelSBold,
}

enum FontFamily { publicSans, roboto }
