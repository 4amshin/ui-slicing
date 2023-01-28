import 'package:flutter/material.dart';

class SmJoinTime extends StatelessWidget {
  const SmJoinTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 100.0,
          width: 6,
          decoration: const BoxDecoration(
            color: Color(0xffc5cce9),
            borderRadius: BorderRadius.all(
              Radius.circular(
                16.0,
              ),
            ),
          ),
        ),
        const SizedBox(width: 25.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Joined",
              style: TextStyle(fontSize: 12, color: Color(0xffc0c3c8)),
            ),
            SizedBox(height: 8),
            Text(
              "7 mon ago",
              style: TextStyle(
                color: Color(0xff1339a4),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
