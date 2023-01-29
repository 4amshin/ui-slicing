import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SmRoundedBook extends StatelessWidget {
  const SmRoundedBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: SvgPicture.asset(
        'assets/icons/student_management/book_logo.svg',
      ),
    );
  }
}
