import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/styles/text_styles.dart';

class ProjectTile extends StatefulWidget {
  final String projectName;
  final String imageUrl;
  final VoidCallback onPressed;

  const ProjectTile({
    super.key,
    required this.projectName,
    required this.imageUrl,
    required this.onPressed,
  });

  @override
  _ProjectTileState createState() => _ProjectTileState();
}

class _ProjectTileState extends State<ProjectTile> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onPressed,
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width / 4,
          child: Column(
            children: [
              Expanded(
                child: Opacity(
                  opacity: _isHovered ? 1.0 : 0.8,
                  child: ColorFiltered(
                    colorFilter: _isHovered
                        ? const ColorFilter.mode(
                            Colors.transparent, BlendMode.dst)
                        : const ColorFilter.mode(
                            Colors.grey, BlendMode.saturation),
                    child: Hero(
                      tag: '1',
                      child: Image.network(
                        widget.imageUrl,
                        fit: BoxFit.cover,
                        color: _isHovered ? null : Colors.grey.withOpacity(0.6),
                        colorBlendMode: BlendMode.saturation,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                color: _isHovered
                    ? Colors.black.withOpacity(0.7)
                    : Colors.transparent,
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Center(
                  child: Text(
                    widget.projectName,
                    style: TextStyle(
                      color:
                          _isHovered ? Colors.white : AppColors.fontSecondary,
                      fontSize: _isHovered ? 20 : 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
