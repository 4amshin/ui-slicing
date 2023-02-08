import 'package:flutter/material.dart';

import '../../theme/color_theme.dart';

class GcDetailPriceRow extends StatelessWidget {
  final String? price;
  const GcDetailPriceRow({
    Key? key,
    this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 1,
          ),
          decoration: BoxDecoration(
            color: gcLightGreen,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text(
            '\$$price',
            style: const TextStyle(
              fontSize: 15.0,
              color: gcGreen,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 35,
          width: 35,
          decoration: const BoxDecoration(
            color: gcLightRed,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: const Icon(
            Icons.favorite,
            color: Colors.red,
            size: 18,
          ),
        ),
      ],
    );
  }
}
