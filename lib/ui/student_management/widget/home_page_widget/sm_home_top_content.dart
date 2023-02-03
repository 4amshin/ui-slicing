import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'sm_home_app_bar.dart';
import 'sm_home_tab_bar.dart';

class SmHomeTopContent extends StatelessWidget {
  const SmHomeTopContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SmHomeAppBar().animate().fade().slideY(
                duration: 850.ms,
                begin: -0.5,
                curve: Curves.easeInOutCubic,
              ),
          const SizedBox(height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Category",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Choose your desire suject!",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white54,
                ),
              ),
            ],
          ).animate().fade().slideX(
                duration: 850.ms,
                begin: -0.5,
                curve: Curves.easeInOutCubic,
              ),
          const SizedBox(height: 25.0),
          const SmHomeTabBar().animate().fade().slideX(
                duration: 850.ms,
                begin: 0.5,
                curve: Curves.easeInOutCubic,
              ),
        ],
      ),
    );
  }
}
