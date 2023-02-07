import 'package:flutter/material.dart';

import '../../theme/color_theme.dart';

class GcChartItemPrice extends StatelessWidget {
  final String? price;
  const GcChartItemPrice({
    Key? key,
    this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Icon(
          Icons.close,
          size: 20,
          color: gcIconGrey,
        ),
        const SizedBox(height: 35),
        Text(
          "\$$price",
          style: const TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
