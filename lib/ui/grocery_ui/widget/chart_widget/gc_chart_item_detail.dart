import 'package:flutter/material.dart';

import '../../theme/color_theme.dart';

class GcChartItemDetail extends StatelessWidget {
  final String? title;
  final String? type;
  final String? weight;
  const GcChartItemDetail({
    Key? key,
    this.title,
    this.type,
    this.weight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? "Bananas",
          style: const TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          type ?? "Organic",
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 5,
          ),
          decoration: BoxDecoration(
            color: gcLightGreen.withOpacity(0.6),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Text(
            weight ?? "12kg",
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
          ),
        ),
      ],
    );
  }
}
