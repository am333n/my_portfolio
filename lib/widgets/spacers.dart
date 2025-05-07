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

class VerticalScreenSpacing extends StatelessWidget {
  const VerticalScreenSpacing(
    this.value, {
    super.key,
  });
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: MediaQuery.sizeOf(context).height * (value ?? 0.1));
  }
}

class HorizontalScreenSpacing extends StatelessWidget {
  const HorizontalScreenSpacing(
    this.value, {
    super.key,
  });
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: MediaQuery.sizeOf(context).width * (value ?? 0.1));
  }
}
