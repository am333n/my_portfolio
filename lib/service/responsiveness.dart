import 'package:flutter/material.dart';

class Responsiveness {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600 &&
      MediaQuery.of(context).size.width < 900;

  static bool isWeb(BuildContext context) =>
      MediaQuery.of(context).size.width >= 900;

  /// Returns `true` if the device is either a tablet or a web layout.
  static bool isTabletOrWeb(BuildContext context) =>
      isTablet(context) || isWeb(context);
}
