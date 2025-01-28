import 'package:flutter/material.dart';

class ResponsiveLayoutBuilder extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget tabletScreenLayout;
  final Widget webScreenLayout;

  const ResponsiveLayoutBuilder({
    super.key,
    required this.mobileScreenLayout,
    required this.tabletScreenLayout,
    required this.webScreenLayout,
  });

  @override
  Widget build(BuildContext context) {
    final windowSize = MediaQuery.of(context).size;

    Widget layout;
    Key layoutKey;

    if (windowSize.width < 600) {
      layout = mobileScreenLayout;
      layoutKey = const ValueKey('mobile');
    } else if (windowSize.width < 900) {
      layout = tabletScreenLayout;
      layoutKey = const ValueKey('tablet');
    } else {
      layout = webScreenLayout;
      layoutKey = const ValueKey('web');
    }

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300), // Use a duration constant
      child: Container(
        key: layoutKey,
        child: layout,
      ),
    );
  }
}
