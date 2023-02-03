import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ui_slicing/ui/student_management/theme/color_theme.dart';
import 'ui/student_management/model/lesson_item.dart';
import 'ui/student_management/widget/home_page_widget/sm_home_app_bar.dart';
import 'ui/student_management/widget/home_page_widget/sm_home_item_card.dart';
import 'ui/student_management/widget/home_page_widget/sm_home_tab_bar.dart';

class TestSite extends StatefulWidget {
  const TestSite({Key? key}) : super(key: key);

  @override
  _TestSiteState createState() => _TestSiteState();
}

class _TestSiteState extends State<TestSite> {
  final Random _random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1339a4),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SmHomeAppBar().animate().fade().slideY(
                      duration: 850.ms,
                      begin: -0.5,
                      curve: Curves.easeInOutCubic,
                    ),
                const SizedBox(height: 35.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
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
                  ],
                ).animate().fade().slideX(
                      duration: 850.ms,
                      begin: -0.5,
                      curve: Curves.easeInOutCubic,
                    ),
                const SizedBox(height: 25.0),
                const SmHomeTabBar().animate().fade().slideX(
                      duration: 850.ms,
                      begin: 0.5,
                      curve: Curves.easeInOutCubic,
                    ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                top: 25,
                left: 25,
                right: 25,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Your Courses",
                        style: TextStyle(
                          fontSize: 15,
                          color: smPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                          fontSize: 13,
                          color: smLightPink,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ).animate().fade(duration: 850.ms).slideY(
                        begin: -0.5,
                        curve: Curves.easeInOutCubic,
                      ),
                  const SizedBox(height: 10.0),
                  Expanded(
                    child: GridView.count(
                      physics: const BouncingScrollPhysics(),
                      crossAxisCount: 2,
                      childAspectRatio: 0.78,
                      children: List.generate(lessons.length, (index) {
                        LessonItem item = lessons[index];
                        return SmHomeItemCard(
                          backgroundColor: item.backgroundColor,
                          iconAsset: item.iconAsset,
                          title: item.title,
                          subTitle: item.subTitle,
                          titleColor: item.titleColor,
                          subTitleColor: item.subTitleColor,
                          progressPercent: item.progress,
                          progressColor: item.progressBarColor,
                        ).animate().fade(duration: 850.ms).slideY(
                              begin: 0.5,
                              curve: Curves.easeInOutCubic,
                            );
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
