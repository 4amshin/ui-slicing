import 'package:flutter/material.dart';

import 'sm_home_app_bar.dart';
import 'sm_home_tab_bar.dart';

class SmHomeTopContent extends StatelessWidget {
  const SmHomeTopContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SmHomeAppBar(),
            SizedBox(
              height: 35.0,
            ),
            Text(
              "Category",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Choose your desire suject!",
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white54,
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            SmHomeTabBar(),
            SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
