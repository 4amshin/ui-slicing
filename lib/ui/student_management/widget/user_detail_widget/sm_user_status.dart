import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../theme/color_theme.dart';

class SmUserStatus extends StatelessWidget {
  const SmUserStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Rely",
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.w900,
              color: smPrimary,
            ),
          ).animate().fade().slideX(
                begin: -1,
                duration: 850.ms,
                curve: Curves.easeInCubic,
              ),
          Text(
            "Student",
            style: TextStyle(
              fontSize: 33.0,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600],
            ),
          ).animate().fade().slideX(
                begin: -1,
                delay: 150.ms,
                duration: 650.ms,
                curve: Curves.easeInCubic,
              ),
        ],
      ),
    );
  }
}
