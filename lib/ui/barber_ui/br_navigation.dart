import 'package:flutter/material.dart';
import 'package:ui_slicing/ui/barber_ui/view/br_booking_page.dart';
import 'package:ui_slicing/ui/barber_ui/view/br_home_page.dart';
import 'package:ui_slicing/ui/barber_ui/view/br_profile_page.dart';
import 'package:ui_slicing/ui/barber_ui/view/br_stylist_page.dart';
import 'package:ui_slicing/ui/barber_ui/widget/br_home_widget/br_home_bottom_navigation.dart';

class BrNavigation extends StatefulWidget {
  const BrNavigation({Key? key}) : super(key: key);

  @override
  _BrNavigationState createState() => _BrNavigationState();
}

class _BrNavigationState extends State<BrNavigation> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = const <Widget>[
    BrHomePage(),
    BrStylistPage(),
    BrBookingPage(),
    BrProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BrHomeBottomNavigation(
        selectedIndex: _selectedIndex,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
      ),
    );
  }
}
