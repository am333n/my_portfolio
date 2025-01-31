import 'package:flutter/material.dart';
import 'package:my_portfolio/service/responsiveness.dart';

class ScreenSizeWidget extends StatelessWidget {
  const ScreenSizeWidget({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: null,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0),
        child: child,
      ),
    );
  }
}
