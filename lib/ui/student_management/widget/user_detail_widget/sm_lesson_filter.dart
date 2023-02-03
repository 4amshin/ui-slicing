import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';

import 'sm_rounded_book.dart';

class SmLessonFilter extends StatelessWidget {
  const SmLessonFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 55,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.all(
          Radius.circular(30.0),
        ),
      ),
      child: Column(
        children: [
          const SmRoundedBook().animate().fade().slideY(
                begin: 0.15,
                delay: 200.ms,
                duration: 650.ms,
                curve: Curves.easeInOutCubic,
              ),
          const SizedBox(height: 10.0),
          SvgPicture.asset(
            'assets/icons/student_management/filter.svg',
            height: 20,
            color: Colors.grey[600],
          ).animate().fade(duration: 850.ms).slideY(
                begin: 0.1,
                duration: 850.ms,
                curve: Curves.easeInOutCubic,
              ),
        ],
      ),
    );
  }
}
