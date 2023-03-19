import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:ui_slicing/ui/grocery_ui/model/item.dart';
import 'package:ui_slicing/ui/grocery_ui/theme/color_theme.dart';
import 'package:ui_slicing/ui/grocery_ui/view/gc_home_page.dart';
import 'package:ui_slicing/ui/grocery_ui/widget/chart_widget/gc_chart_checkout_button.dart';
import '../widget/chart_widget/gc_chart_item.dart';

class GcChartCheckout extends StatelessWidget {
  const GcChartCheckout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gcBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'My Chart',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const GcHomePage()),
            );
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: gcIconGrey,
            size: 20,
          ),
        ),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),
        child: AnimationLimiter(
          child: ListView.builder(
            itemCount: groceryItems.length,
            itemBuilder: (context, index) {
              final data = groceryItems[index];
              return AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(milliseconds: 750),
                child: SlideAnimation(
                  curve: Curves.fastOutSlowIn,
                  verticalOffset: 50,
                  child: FadeInAnimation(
                    child: GcChartItem(
                      imgAsset: data.imgAsset,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: RepaintBoundary(
        child: const GcChartCheckOutButton(
          text: '36.45',
        )
            .animate()
            .fade()
            .slideY(
              begin: 0.8,
              duration: 850.ms,
              curve: Curves.fastOutSlowIn,
            )
            .then()
            .shimmer(duration: 1.5.seconds),
      ),
    );
  }
}
