import 'package:flutter/material.dart';
import 'package:ui_slicing/ui/grocery_ui/model/fruits.dart';
import 'package:ui_slicing/ui/grocery_ui/model/vegetables.dart';
import 'package:ui_slicing/ui/grocery_ui/widget/home_widget/gc_home_app_bar.dart';
import 'package:ui_slicing/ui/grocery_ui/widget/home_widget/gc_search.dart';

import '../widget/home_widget/gc_banner.dart';
import '../widget/home_widget/gc_fruits.dart';

class GcHomePage extends StatelessWidget {
  const GcHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 246, 253),
      body: SafeArea(
        minimum: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const GcHomeAppBar(),
            const SizedBox(height: 25.0),
            const GcSearch(),
            const SizedBox(height: 25.0),
            const GcBanner(),
            const SizedBox(height: 25.0),
            GcFruits(
              title: 'Fruits',
              model: fruits,
            ),
            const SizedBox(height: 15),
            GcFruits(
              title: 'Vegetables',
              model: vegetable,
            ),
          ],
        ),
      ),
    );
  }
}
