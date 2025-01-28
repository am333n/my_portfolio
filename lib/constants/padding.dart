import 'package:flutter/material.dart';

class AppPadding {
  // General Padding
  static const EdgeInsets smallPadding = EdgeInsets.all(8.0);
  static const EdgeInsets mediumPadding = EdgeInsets.all(16.0);
  static const EdgeInsets largePadding = EdgeInsets.all(24.0);

  // Horizontal and Vertical Padding
  static const EdgeInsets horizontalPaddingSmall =
      EdgeInsets.symmetric(horizontal: 8.0);
  static const EdgeInsets horizontalPaddingMedium =
      EdgeInsets.symmetric(horizontal: 16.0);
  static const EdgeInsets horizontalPaddingLarge =
      EdgeInsets.symmetric(horizontal: 24.0);

  static const EdgeInsets verticalPaddingSmall =
      EdgeInsets.symmetric(vertical: 8.0);
  static const EdgeInsets verticalPaddingMedium =
      EdgeInsets.symmetric(vertical: 16.0);
  static const EdgeInsets verticalPaddingLarge =
      EdgeInsets.symmetric(vertical: 24.0);

  // Specific Widget Padding
  static const EdgeInsets buttonPadding =
      EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0);
  static const EdgeInsets cardPadding = EdgeInsets.all(16.0);
  static const EdgeInsets containerPadding =
      EdgeInsets.symmetric(vertical: 20.0, horizontal: 24.0);
}
