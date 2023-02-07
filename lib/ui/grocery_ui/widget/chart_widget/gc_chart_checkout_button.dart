import 'package:flutter/material.dart';

import '../../theme/color_theme.dart';

class GcChartCheckOutButton extends StatelessWidget {
  final String? text;
  const GcChartCheckOutButton({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.only(
        left: 40,
        right: 10,
      ),
      decoration: const BoxDecoration(
        color: gcGreen,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Center(
        child: Text(
          "\$$text Checkout",
          style: const TextStyle(
            fontSize: 13.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
