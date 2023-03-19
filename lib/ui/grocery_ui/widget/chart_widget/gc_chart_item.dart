import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ui_slicing/ui/grocery_ui/widget/chart_widget/gc_chart_item_image.dart';
import 'package:ui_slicing/ui/grocery_ui/widget/chart_widget/gc_chart_item_price.dart';

import 'gc_chart_item_detail.dart';

class GcChartItem extends StatelessWidget {
  final String? imgAsset;
  final String? title;
  final String? type;
  final String? weight;
  final String? price;
  final double? space;
  const GcChartItem({
    Key? key,
    required this.imgAsset,
    this.title,
    this.type,
    this.weight,
    this.price,
    this.space,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
        left: 10,
        right: 15,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            offset: const Offset(5, 6),
            blurRadius: 6,
            spreadRadius: 2,
          )
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GcChartItemImage(
                imgAsset: imgAsset,
              ),
              const SizedBox(width: 5),
              GcChartItemDetail(
                title: title,
                type: type,
                weight: weight,
              ),
            ],
          ),
          GcChartItemPrice(
            price: price ?? '8.98',
          ),
        ],
      ).animate().fade().slideY(
            begin: -0.25,
            duration: 850.ms,
            curve: Curves.fastOutSlowIn,
          ),
    );
  }
}
