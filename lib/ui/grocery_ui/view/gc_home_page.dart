import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ui_slicing/ui/grocery_ui/theme/color_theme.dart';
import 'package:ui_slicing/ui/grocery_ui/widget/home_widget/gc_home_app_bar.dart';
import 'package:ui_slicing/ui/grocery_ui/widget/home_widget/gc_search.dart';

import '../model/item.dart';
import '../widget/home_widget/gc_banner.dart';
import '../widget/home_widget/gc_items.dart';

class GcHomePage extends StatelessWidget {
  const GcHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gcBackgroundColor,
      body: SafeArea(
        minimum: const EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
        ),
        child: RepaintBoundary(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const GcHomeAppBar()
                  .animate()
                  .fade(
                    duration: 850.ms,
                  )
                  .slideY(
                    begin: -0.4,
                    duration: 850.ms,
                    curve: Curves.easeInOutCubic,
                  ),
              const SizedBox(height: 25.0),
              const GcSearch()
                  .animate()
                  .fade(
                    duration: 850.ms,
                  )
                  .slideX(
                    begin: -0.3,
                    duration: 850.ms,
                    curve: Curves.easeInOutCubic,
                  ),
              const SizedBox(height: 25.0),
              const GcBanner()
                  .animate()
                  .fade(
                    duration: 850.ms,
                  )
                  .slideX(
                    begin: -0.3,
                    duration: 850.ms,
                    curve: Curves.easeInOutCubic,
                  )
                  .then()
                  .shimmer(duration: 1.5.seconds),
              const SizedBox(height: 25.0),
              GcItems(
                title: 'Fruits',
                model: groceryItems
                    .where((item) => item.category == 'fruit')
                    .toList(),
              ),
              const SizedBox(height: 15),
              GcItems(
                title: 'Vegetables',
                model: groceryItems
                    .where((item) => item.category == 'vegetable')
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
