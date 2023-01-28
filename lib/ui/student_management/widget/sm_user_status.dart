import 'package:flutter/material.dart';

class SmUserStatus extends StatelessWidget {
  const SmUserStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Rely",
          style: TextStyle(
            fontSize: 35.0,
            fontWeight: FontWeight.bold,
            color: Color(0xff1339a4),
          ),
        ),
        Text(
          "Student",
          style: TextStyle(
            fontSize: 33.0,
            fontWeight: FontWeight.w500,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}
