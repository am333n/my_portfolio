import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/pages/about%20me%20section/about_me_page.dart';
import 'package:my_portfolio/pages/experience%20section/experience_section.dart';
import 'package:my_portfolio/pages/mobile_layout.dart';
import 'package:my_portfolio/pages/profile_details.dart';
import 'package:my_portfolio/pages/projects_section.dart';
import 'package:my_portfolio/pages/web_layout.dart';

import 'package:my_portfolio/styles/txt.dart';
import 'package:my_portfolio/widgets/animated_hello.dart';
import 'package:my_portfolio/widgets/page_size_container.dart';
import 'package:my_portfolio/widgets/responsive_layout_builder.dart';
import 'package:my_portfolio/widgets/spacers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMainContent = true;
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  void _startAnimation() {
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _showMainContent = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutBuilder(
      mobileScreenLayout:
          _buildScaffold(context, Colors.blue, child: _buildMobileContent()),
      tabletScreenLayout:
          _buildScaffold(context, Colors.purple, child: _buildWebContent()),
      webScreenLayout:
          _buildScaffold(context, Colors.amber, child: _buildWebContent()),
    );
  }

  Widget _buildScaffold(BuildContext context, Color color,
      {required Widget child}) {
    return Scaffold(
      backgroundColor: AppColors.backgroundPrimary,
      extendBodyBehindAppBar: true,
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 700),
        child: _showMainContent ? child : _buildHelloScreen(),
      ),
    );
  }

  Widget _buildHelloScreen() {
    return const PageSizeContainer(
        colors: [AppColors.black, AppColors.black], child: AnimatedHello());
  }

  Widget _buildWebContent() {
    return WebLayout(scrollController: scrollController);
  }

  Widget _buildMobileContent() {
    return MobileLayout(scrollController: scrollController);
  }
}
