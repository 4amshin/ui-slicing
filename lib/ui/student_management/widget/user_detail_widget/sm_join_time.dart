import 'package:flutter/material.dart';

import '../../theme/color_theme.dart';

class SmJoinTime extends StatelessWidget {
  const SmJoinTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 90,
          width: 5,
          decoration: const BoxDecoration(
            color: Color(0xffc5cce9),
            borderRadius: BorderRadius.all(
              Radius.circular(
                16.0,
              ),
            ),
          ),
        ),
        const SizedBox(width: 25.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Joined",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "7 mon ago",
              style: TextStyle(
                color: smPrimary,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
