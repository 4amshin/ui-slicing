import 'package:flutter/material.dart';

class SmHomeTabBar extends StatefulWidget {
  const SmHomeTabBar({Key? key}) : super(key: key);

  @override
  State<SmHomeTabBar> createState() => _SmHomeTabBarState();
}

class _SmHomeTabBarState extends State<SmHomeTabBar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _controller = TabController(
      length: 4,
      vsync: this,
    );
    return TabBar(
      controller: _controller,
      dividerColor: Colors.transparent,
      indicatorColor: Colors.white,
      indicatorSize: TabBarIndicatorSize.tab,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      indicatorPadding: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 10,
      ),
      isScrollable: true,
      unselectedLabelColor: Colors.white54,
      labelColor: Colors.indigo,
      tabs: const [
        Tab(
          text: 'All',
        ),
        Tab(
          text: 'Popular',
        ),
        Tab(
          text: 'Recommend',
        ),
        Tab(
          text: 'Favorite',
        ),
      ],
    );
  }
}
