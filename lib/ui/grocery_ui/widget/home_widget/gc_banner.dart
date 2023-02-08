import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ui_slicing/ui/grocery_ui/theme/color_theme.dart';

class GcBanner extends StatelessWidget {
  const GcBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      decoration: const BoxDecoration(
        color: gcLightGreen,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 25,
            top: 33,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Get Up To",
                  style: TextStyle(
                    fontSize: 13.0,
                    color: gcGreen,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "10% off",
                  style: TextStyle(
                    fontSize: 35.0,
                    color: gcGreen,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
                .animate()
                .fade(
                  duration: 850.ms,
                )
                .slideY(
                  begin: -0.3,
                  duration: 850.ms,
                ),
          ),
          const Positioned(
            right: -13,
            top: 0,
            child: Image(
              height: 190,
              image: AssetImage('assets/images/grocery/banner.png'),
            ),
          )
              .animate()
              .fade(
                duration: 850.ms,
              )
              .slideY(
                begin: 0.3,
                duration: 850.ms,
              ),
        ],
      ),
    );
  }
}
