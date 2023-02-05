import 'package:flutter/material.dart';

import '../../theme/color_theme.dart';

class GcHomeAppBar extends StatelessWidget {
  const GcHomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Grocery",
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            color: gcProfileGreen,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            image: DecorationImage(
              image: AssetImage('assets/images/grocery/profile.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
