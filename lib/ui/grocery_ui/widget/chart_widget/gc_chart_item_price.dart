import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

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
        )
            .animate()
            .scaleXY(
              delay: 800.ms,
              end: 1.2,
              duration: 300.ms,
              curve: Curves.easeOut,
            )
            .then(delay: 150.ms)
            .scaleXY(
              end: 1 / 1.2,
              curve: Curves.easeIn,
            ),
      ],
    );
  }
}
