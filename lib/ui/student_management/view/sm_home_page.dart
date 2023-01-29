import 'package:flutter/material.dart';
import 'package:ui_slicing/ui/student_management/widget/home_page_widget/sm_home_app_bar.dart';
import 'package:ui_slicing/ui/student_management/widget/home_page_widget/sm_home_tab_bar.dart';

class SmHomePage extends StatelessWidget {
  const SmHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1339a4),
      body: SafeArea(
        minimum: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SmHomeAppBar(),
            const SizedBox(
              height: 35.0,
            ),
            const Text(
              "Category",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Choose your desire suject!",
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white54,
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            const SmHomeTabBar(),
            const SizedBox(height: 30.0),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: const BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
