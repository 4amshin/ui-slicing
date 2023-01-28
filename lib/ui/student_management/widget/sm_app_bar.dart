import 'package:flutter/material.dart';

class SmAppBar extends StatelessWidget {
  const SmAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Icon(
          Icons.arrow_back_ios,
          color: Color(0xff1339a4),
          size: 20,
        ),
        Icon(
          Icons.more_horiz,
          color: Color(0xff1339a4),
          size: 25,
        ),
      ],
    );
  }
}
