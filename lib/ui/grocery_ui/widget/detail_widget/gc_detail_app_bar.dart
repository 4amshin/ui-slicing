import 'package:flutter/material.dart';

class GcDetailAppBar extends StatelessWidget {
  const GcDetailAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
            size: 20,
          ),
          Icon(
            Icons.more_horiz,
            color: Colors.grey,
            size: 20,
          ),
        ],
      ),
    );
  }
}
