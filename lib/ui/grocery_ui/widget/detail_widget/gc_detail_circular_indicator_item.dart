import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../theme/color_theme.dart';

class GcDetailCircularIndicatorItem extends StatelessWidget {
  final Color? color;
  final String? progress;
  final String? title;
  final double? leftMargin;
  final double? percentIndicator;
  const GcDetailCircularIndicatorItem({
    Key? key,
    this.color,
    this.progress,
    this.title,
    this.leftMargin,
    this.percentIndicator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            CircularPercentIndicator(
              radius: 25,
              lineWidth: 4,
              circularStrokeCap: CircularStrokeCap.round,
              percent: percentIndicator ?? 0.85,
              backgroundColor: gcMediumGrey,
              progressColor: color ?? gcGreen,
            ),
            Positioned(
              top: 13,
              left: leftMargin ?? 14,
              child: Text(
                progress ?? "1,1g",
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Text(
          title ?? "Protein",
          style: TextStyle(
            fontSize: 12,
            color: gcIconGrey,
            // fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
