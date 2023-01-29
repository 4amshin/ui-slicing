import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SmSignOut extends StatelessWidget {
  const SmSignOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
            color: Color(0xff1339a4),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
