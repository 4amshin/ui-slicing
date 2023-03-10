import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';

import '../../theme/color_theme.dart';

class SmSignOut extends StatelessWidget {
  const SmSignOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/student_management/sign-out.svg',
            height: 16,
            color: const Color(0xffffb8b2),
          ),
          const SizedBox(width: 10),
          const Text(
            "Sign Out",
            style: TextStyle(
              fontSize: 13.0,
              color: smPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ).animate().fade().slideY(
            begin: 1.5,
            duration: 850.ms,
            curve: Curves.easeInOutCubic,
          ),
    );
  }
}
