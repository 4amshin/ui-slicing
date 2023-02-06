import 'package:flutter/material.dart';

import 'gc_detail_item_name.dart';
import 'gc_detail_mid_line.dart';
import 'gc_detail_price_row.dart';
import 'gc_detail_progress_row.dart';

class GcDetailBottomContent extends StatelessWidget {
  const GcDetailBottomContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      child: ListView(
        children: const [
          SizedBox(height: 10),
          GcDetailMidLine(),
          SizedBox(height: 15.0),
          GcDetailPriceRow(),
          SizedBox(height: 10),
          GcDetailItemName(),
          SizedBox(height: 25.0),
          GcDetailProgressRow(),
        ],
      ),
    );
  }
}
