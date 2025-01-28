import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/styles/text_styles.dart'; // Adjust the import based on your file structure

class ExpandableTextButton extends StatefulWidget {
  final String text;
  final Color hoverColor;
  final Color defaultColor;
  final double expandedScale;
  final VoidCallback? onPressed; // Callback property

  const ExpandableTextButton({
    super.key,
    required this.text,
    this.hoverColor = AppColors.primary,
    this.defaultColor = AppColors.fontPrimary,
    this.expandedScale = 1.0,
    this.onPressed, // Initialize callback property
  });

  @override
  _ExpandableTextButtonState createState() => _ExpandableTextButtonState();
}

class _ExpandableTextButtonState extends State<ExpandableTextButton>
    with SingleTickerProviderStateMixin {
  bool _isHovered = false;
  bool _isTapped = false;

  void _onEnter(PointerEvent details) {
    setState(() {
      _isHovered = true;
    });
  }

  void _onExit(PointerEvent details) {
    setState(() {
      _isHovered = false;
    });
  }

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _isTapped = true;
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _isTapped = false;
    });
    // Call the callback if it's not null
    if (widget.onPressed != null) {
      widget.onPressed!();
    }
  }

  void _onTapCancel() {
    setState(() {
      _isTapped = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isActive = _isHovered || _isTapped;
    final color = isActive ? widget.hoverColor : widget.defaultColor;
    final scale = isActive ? widget.expandedScale : 1.0;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: _onEnter,
        onExit: _onExit,
        child: GestureDetector(
          onTapDown: _onTapDown,
          onTapUp: _onTapUp,
          onTapCancel: _onTapCancel,
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 200),
            style: TextStyle(
              color: color,
              fontFamily: 'Roboto',
              fontSize: 14 * scale, // Adjust the base font size as needed
              fontWeight: FontWeight.w500, // Adjust as needed
            ),
            child: Text(
              widget.text,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
