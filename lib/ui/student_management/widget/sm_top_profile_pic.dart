import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SmTopProfilePic extends StatelessWidget {
  const SmTopProfilePic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircularPercentIndicator(
          radius: 63.0,
          lineWidth: 4.5,
          circularStrokeCap: CircularStrokeCap.round,
          percent: 0.65,
          backgroundColor: Colors.transparent,
          progressColor: const Color(0xffffb8b2),
        ),
        const Positioned(
          top: 13,
          left: 13,
          child: CircleAvatar(
            backgroundColor: Color(0xffffb8b2),
            backgroundImage: AssetImage(
              'assets/images/student_management/profile.png',
            ),
            radius: 50,
          ),
        ),
      ],
    );
  }
}
