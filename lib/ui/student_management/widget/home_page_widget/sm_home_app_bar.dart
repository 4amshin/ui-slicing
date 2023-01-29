import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../view/sm_user_detail.dart';

class SmHomeAppBar extends StatelessWidget {
  const SmHomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 18,
          backgroundColor: Colors.blueAccent,
          child: SvgPicture.asset(
            'assets/icons/student_management/dashboard.svg',
            color: Colors.white,
            height: 30,
          ),
        ),
        const Text(
          "Home",
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SmUserDetail()),
            );
          },
          child: const CircleAvatar(
            radius: 18,
            backgroundColor: Color(0xffffb8b2),
            backgroundImage: AssetImage(
              'assets/images/student_management/profile.png',
            ),
          ),
        ),
      ],
    );
  }
}
