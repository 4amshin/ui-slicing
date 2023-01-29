import 'package:flutter/material.dart';

import 'sm_home_tab_bar_item.dart';

class SmHomeTabBar extends StatelessWidget {
  const SmHomeTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: const [
          SmHomeTabBarItem(
            text: 'All',
            width: 50,
          ),
          SizedBox(width: 15.0),
          SmHomeTabBarItem(
            text: 'Popular',
            textColor: Colors.white54,
            width: 90,
            backgroundColor: Colors.transparent,
          ),
          SizedBox(width: 15.0),
          SmHomeTabBarItem(
            text: 'Recommended',
            textColor: Colors.white54,
            width: 140,
            backgroundColor: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
