import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../theme/color_theme.dart';
import 'sm_lesson_list.dart';

class SmBottomContent extends StatelessWidget {
  const SmBottomContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RepaintBoundary(
          child: const Text(
            "Complete Profile",
            style: TextStyle(
              fontSize: 15,
              color: smPrimary,
              fontWeight: FontWeight.bold,
            ),
          ).animate().fade().slideY(
                begin: -0.5,
                duration: 850.ms,
                curve: Curves.easeInOutCubic,
              ),
        ),
        const SizedBox(height: 15),
        RepaintBoundary(
          child: const SmLessonList()
              .animate()
              .fade()
              .slideX(
                begin: -0.5,
                duration: 850.ms,
                curve: Curves.easeInOutCubic,
              )
              .shimmer(
                delay: 850.ms,
                duration: 850.ms,
              ),
        ),
      ],
    );
  }
}
