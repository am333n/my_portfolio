import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_colors.dart';

class AppCard extends StatelessWidget {
  AppCard({super.key, required this.child, this.onPressed});

  final _controller = WidgetStatesController();
  final Widget child;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _controller,
      builder: (context, state, _) {
        // Determine the background color based on hover and pressed states
        Color backgroundColor = Colors.transparent;
        if (state.contains(WidgetState.pressed)) {
          backgroundColor = AppColors.grey.withOpacity(0.5);
        } else if (state.contains(WidgetState.hovered)) {
          backgroundColor = AppColors.grey.withOpacity(1.0);
        }

        return GestureDetector(
          onTapDown: (details) {
            _controller.update(WidgetState.pressed, true);
          },
          onTapCancel: () {
            _controller.update(WidgetState.pressed, false);
          },
          onTapUp: (details) {
            _controller.update(WidgetState.pressed, false);
            onPressed?.call();
          },
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            onEnter: (event) {
              _controller.update(WidgetState.hovered, true);
            },
            onExit: (event) {
              _controller.update(WidgetState.hovered, false);
            },
            child: AnimatedContainer(
              duration: Durations.long1,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  child,
                  if (onPressed !=
                      null) // Show the icon only if onPressed is provided
                    Positioned(
                      top: -10,
                      right: -10,
                      child: AnimatedOpacity(
                        duration: Durations.long1,
                        opacity: state.contains(WidgetState.hovered) ||
                                state.contains(WidgetState.pressed)
                            ? 1.0
                            : 0.8,
                        child: AnimatedContainer(
                          duration: Durations.long1,
                          transform: Matrix4.translationValues(
                            state.contains(WidgetState.hovered) ||
                                    state.contains(WidgetState.pressed)
                                ? 10
                                : 0,
                            state.contains(WidgetState.hovered) ||
                                    state.contains(WidgetState.pressed)
                                ? -10
                                : 0,
                            0,
                          ),
                          child: const Icon(Icons.north_east,
                              color: AppColors.secondary),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
