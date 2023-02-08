import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ui_slicing/ui/grocery_ui/theme/color_theme.dart';
import 'package:ui_slicing/ui/grocery_ui/widget/chart_widget/gc_chart_checkout_button.dart';
import 'package:ui_slicing/ui/grocery_ui/widget/detail_widget/gc_detail_add_button.dart';

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
        ).animate().fade().slideY(
              begin: -0.5,
              duration: 850.ms,
              curve: Curves.fastOutSlowIn,
            ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: gcIconGrey,
            size: 20,
          ),
        ).animate().fade().slideX(
              begin: -0.5,
              duration: 850.ms,
              curve: Curves.fastOutSlowIn,
            ),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),
        child: RepaintBoundary(
          child: ListView(
            children: const [
              GcChartItem(
                imgAsset: 'banana',
              ),
              SizedBox(height: 20),
              GcChartItem(
                imgAsset: 'apple',
                title: 'Apple',
                weight: '1kg',
                price: '7.98',
                space: 85,
              ),
              SizedBox(height: 20),
              GcChartItem(
                imgAsset: 'broccoli',
                title: 'Broccoli',
                weight: '1kg',
                price: '12.99',
                space: 70,
              ),
              SizedBox(height: 20),
              GcChartItem(
                imgAsset: 'avocado',
                title: 'Avocado',
                weight: '1kg',
                price: '6.49',
                space: 65,
              ),
              SizedBox(height: 20),
              GcChartItem(
                imgAsset: 'grape',
                title: 'Grape',
                weight: '1kg',
                price: '4.69',
                space: 82,
              ),
            ],
          ).animate().fade(duration: 750.ms).slideX(
                begin: 0.2,
                duration: 850.ms,
                curve: Curves.fastOutSlowIn,
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
