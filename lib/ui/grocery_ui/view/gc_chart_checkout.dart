import 'package:flutter/material.dart';
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
        ),
        leading: IconButton(
          onPressed: () {},
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
        ),
      ),
      floatingActionButton: const GcChartCheckOutButton(
        text: '36.45',
      ),
    );
  }
}
