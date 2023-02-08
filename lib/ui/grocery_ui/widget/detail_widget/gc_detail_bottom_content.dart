import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'gc_detail_item_name.dart';
import 'gc_detail_mid_line.dart';
import 'gc_detail_price_row.dart';
import 'gc_detail_progress_row.dart';

class GcDetailBottomContent extends StatelessWidget {
  final String? price;
  final String? title;
  final String? description;
  const GcDetailBottomContent({
    Key? key,
    this.price,
    this.title,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 15,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      child: RepaintBoundary(
        child: Column(
          children: [
            const SizedBox(height: 10),
            const GcDetailMidLine().animate().fade().slideY(
                  duration: 850.ms,
                  begin: -2,
                  curve: Curves.fastOutSlowIn,
                ),
            const SizedBox(height: 10),
            SizedBox(
              height: 340,
              child: ListView(
                children: [
                  const SizedBox(height: 15.0),
                  GcDetailPriceRow(
                    price: price ?? '4.99',
                  ),
                  const SizedBox(height: 10),
                  GcDetailItemName(
                    title: title,
                    description: description,
                  ),
                  const SizedBox(height: 25.0),
                  const GcDetailProgressRow(),
                  const SizedBox(height: 50),
                ],
              )
                  .animate()
                  .fade(
                    duration: 850.ms,
                  )
                  .slideY(
                    begin: 0.1,
                    duration: 750.ms,
                    curve: Curves.fastOutSlowIn,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
