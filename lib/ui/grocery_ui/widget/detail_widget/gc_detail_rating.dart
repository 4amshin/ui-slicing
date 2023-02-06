import 'package:flutter/material.dart';

import '../../theme/color_theme.dart';

class GcDetailRating extends StatelessWidget {
  final IconData? icon;
  final String? text;
  const GcDetailRating({
    Key? key,
    this.icon,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon ?? Icons.star,
          color: gcGreen,
          size: 14,
        ),
        const SizedBox(width: 5.0),
        Text(
          text ?? "4,8 Rating",
          style: TextStyle(
            fontSize: 12,
            color: gcIconGrey,
          ),
        ),
      ],
    );
  }
}
