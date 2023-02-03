import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../theme/color_theme.dart';

class SmTopProfilePic extends StatelessWidget {
  const SmTopProfilePic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircularPercentIndicator(
          radius: 53.0,
          lineWidth: 4.5,
          circularStrokeCap: CircularStrokeCap.round,
          percent: 0.65,
          backgroundColor: Colors.transparent,
          progressColor: smLightPink,
        ),
        const Positioned(
          top: 10,
          left: 10,
          child: CircleAvatar(
            backgroundColor: smLightPink,
            backgroundImage: AssetImage(
              'assets/images/student_management/profile.png',
            ),
            radius: 43,
          ),
        ),
      ],
    );
  }
}
