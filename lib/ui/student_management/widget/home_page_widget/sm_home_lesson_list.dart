import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ui_slicing/ui/student_management/theme/color_theme.dart';
import 'package:ui_slicing/ui/student_management/widget/home_page_widget/sm_home_item_card.dart';

import '../../model/lesson_item.dart';

class SmHomeLessonList extends StatelessWidget {
  const SmHomeLessonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                children: List.generate(
                  lessons.length,
                  (index) {
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
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
