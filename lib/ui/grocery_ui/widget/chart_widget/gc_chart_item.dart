import 'package:flutter/material.dart';
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
    this.imgAsset,
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
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
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
          SizedBox(width: space ?? 68),
          GcChartItemPrice(
            price: price ?? '8.98',
          ),
        ],
      ),
    );
  }
}
