import 'package:flutter/material.dart';
import 'package:ui_slicing/ui/grocery_ui/theme/color_theme.dart';

class GcDetailMidLine extends StatelessWidget {
  const GcDetailMidLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      margin: const EdgeInsets.symmetric(
        horizontal: 115,
      ),
      decoration: const BoxDecoration(
        color: gcMediumGrey,
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
    );
  }
}
