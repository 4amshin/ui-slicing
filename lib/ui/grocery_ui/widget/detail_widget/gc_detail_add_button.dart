import 'package:flutter/material.dart';

import '../../theme/color_theme.dart';

class GcDetailAddButton extends StatelessWidget {
  const GcDetailAddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.only(
        left: 40,
        right: 10,
      ),
      decoration: const BoxDecoration(
        color: gcGreen,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.add,
            size: 20,
            color: Colors.white,
          ),
          SizedBox(width: 5),
          Text(
            "Add to cart",
            style: TextStyle(
              fontSize: 13.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
