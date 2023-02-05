import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'sm_join_time.dart';
import 'sm_top_profile_pic.dart';

class SmTopContent extends StatelessWidget {
  const SmTopContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Row(
        children: [
          const SmTopProfilePic().animate().fade().slideX(
                begin: -0.5,
                duration: 850.ms,
                curve: Curves.easeInCubic,
              ),
          const SizedBox(width: 65.0),
          const SmJoinTime(),
        ],
      ).animate().shimmer(
            delay: 850.ms,
            duration: 850.ms,
          ),
    );
  }
}
