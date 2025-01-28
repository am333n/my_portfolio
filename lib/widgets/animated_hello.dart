import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_portfolio/styles/text_styles.dart';

class AnimatedHello extends StatefulWidget {
  const AnimatedHello({super.key});

  @override
  _AnimatedHelloState createState() => _AnimatedHelloState();
}

class _AnimatedHelloState extends State<AnimatedHello> {
  String _currentGreeting = 'Hello';
  late Timer _timer;
  int _greetingIndex = 0;

  final List<String> _greetings = [
    'Hello',
    'नमस्ते', // Hindi
    'ഹലോ', // Malayalam
    'مرحبا', // Arabic
    'Hola', // Spanish
    'Bonjour', // French
    '你好', // Chinese
    'こんにちは', // Japanese
  ];

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _greetingIndex = (_greetingIndex + 1) % _greetings.length;
        _currentGreeting = _greetings[_greetingIndex];
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
        child: Txt(
          _currentGreeting,
          key: ValueKey<String>(_currentGreeting),
          textStyle: TextStyles.headingLBold,
          fontColor: Colors.white,
          fontSize: 48,
        ));
  }
}
