import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_colors.dart';
import 'package:my_portfolio/pages/about_me_page.dart';
import 'package:my_portfolio/pages/project_page.dart';
import 'package:my_portfolio/widgets/animated_hello.dart';
import 'package:my_portfolio/widgets/page_size_container.dart';
import 'package:my_portfolio/widgets/responsive_layout_builder.dart';

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
      mobileScreenLayout: _buildScaffold(context, Colors.blue),
      tabletScreenLayout: _buildScaffold(context, Colors.purple),
      webScreenLayout: _buildScaffold(context, Colors.amber),
    );
  }

  Widget _buildScaffold(BuildContext context, Color color) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 700),
        child:
            _showMainContent ? _buildMainContent(color) : _buildHelloScreen(),
      ),
    );
  }

  Widget _buildHelloScreen() {
    return const PageSizeContainer(
        colors: [AppColors.black, AppColors.black], child: AnimatedHello());
  }

  Widget _buildMainContent(Color color) {
    return Container(
      key: const ValueKey('main'),
      child: CustomScrollView(
        controller: scrollController,
        physics: const PageScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
              child: AboutMePage(
            scrollController: scrollController,
          )),
          SliverToBoxAdapter(
            child: ProjectsPage(),
          )
        ],
      ),
    );
  }
}
