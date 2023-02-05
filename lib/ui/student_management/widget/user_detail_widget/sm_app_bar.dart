import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../theme/color_theme.dart';

class SmAppBar extends StatelessWidget {
  const SmAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: smPrimary,
              size: 20,
            ),
          ),
          const Icon(
            Icons.more_horiz,
            color: smPrimary,
            size: 25,
          ),
        ],
      ).animate().fade().slideY(
            duration: 850.ms,
            begin: -0.5,
            curve: Curves.easeInOutCubic,
          ),
    );
  }
}
