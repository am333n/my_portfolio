import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_colors.dart';

class PageSizeContainer extends StatelessWidget {
  const PageSizeContainer({
    super.key,
    this.colors,
    required this.child,
  });
  final Widget child;
  final List<Color>? colors;
  @override
  Widget build(BuildContext context) {
    final windowSize = MediaQuery.sizeOf(context);
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              end: Alignment.bottomRight,
              colors: colors ??
                  [
                    AppColors.backgroundPrimary,
                    AppColors.backgroundSecondary
                  ])),
      height: windowSize.height,
      width: windowSize.width,
      child: child,
    );
  }
}
