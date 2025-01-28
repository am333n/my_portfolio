import 'package:flutter/material.dart';

class HorizontalSpacing extends StatelessWidget {
  const HorizontalSpacing(
    this.width, {
    super.key,
  });
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}

class VerticalSpacing extends StatelessWidget {
  const VerticalSpacing(
    this.height, {
    super.key,
  });
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
