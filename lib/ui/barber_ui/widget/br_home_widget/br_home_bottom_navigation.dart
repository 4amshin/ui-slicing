// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BrHomeBottomNavigation extends StatelessWidget {
  final int selectedIndex;
  final void Function(int) onItemSelected;
  const BrHomeBottomNavigation({
    Key? key,
    required this.selectedIndex,
    required this.onItemSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlashyTabBar(
      selectedIndex: selectedIndex,
      showElevation: true,
      onItemSelected: onItemSelected,
      items: [
        FlashyTabBarItem(
          icon: SvgPicture.asset(
            'assets/icons/barber/home.svg',
            color: Colors.indigo[200],
          ),
          title: const Text('Home'),
        ),
        FlashyTabBarItem(
          icon: SvgPicture.asset(
            'assets/icons/barber/stylist.svg',
            height: 25,
            color: Colors.indigo[200],
          ),
          title: const Text('Stylist'),
        ),
        FlashyTabBarItem(
          icon: SvgPicture.asset(
            'assets/icons/barber/booking.svg',
            color: Colors.indigo[200],
          ),
          title: const Text('Booking'),
        ),
        FlashyTabBarItem(
          icon: SvgPicture.asset(
            'assets/icons/barber/person.svg',
            color: Colors.indigo[200],
          ),
          title: const Text('Profile'),
        ),
      ],
    );
  }
}
