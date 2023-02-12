import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BrHomeAppBar extends StatelessWidget {
  const BrHomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 22,
              backgroundColor: Colors.lightBlue,
              backgroundImage: AssetImage(
                'assets/images/barber/user.png',
              ),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Rely Arfadillah",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
        SvgPicture.asset(
          'assets/icons/barber/notification.svg',
          height: 25,
          color: Colors.black87,
        ),
      ],
    );
  }
}
