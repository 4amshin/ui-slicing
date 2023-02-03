import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_slicing/ui/student_management/widget/home_page_widget/sm_home_item_card.dart';

import '../../model/lesson_item.dart';

class SmHomeLessonList extends StatelessWidget {
  const SmHomeLessonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 448,
        padding: const EdgeInsets.all(25),
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
                    color: Color(0xff1339a4),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xfff1d0d7),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
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
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}