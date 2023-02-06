import 'package:flutter/material.dart';

import '../../theme/color_theme.dart';
import 'gc_detail_circular_indicator_item.dart';

class GcDetailProgressRow extends StatelessWidget {
  const GcDetailProgressRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        GcDetailCircularIndicatorItem(),
        GcDetailCircularIndicatorItem(
          color: gcMediumRed,
          progress: '23g',
          title: 'Carbohydrates',
          leftMargin: 12,
          percentIndicator: 0.65,
        ),
        GcDetailCircularIndicatorItem(
          color: gcMediumGold,
          progress: '96',
          title: 'Kcal',
          leftMargin: 15.5,
          percentIndicator: 0.80,
        ),
      ],
    );
  }
}
