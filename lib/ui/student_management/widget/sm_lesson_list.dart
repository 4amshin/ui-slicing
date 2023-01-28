import 'package:flutter/material.dart';

import 'sm_lesson_item.dart';

class SmLessonList extends StatelessWidget {
  const SmLessonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SmLessonItem(
          backgroundColor: Color(0xff1339a4),
          imgAssets: 'education',
          title: 'Education',
          subTitle: '04 Steps Left',
        ),
        SmLessonItem(
          backgroundColor: Colors.grey[200],
          imgAssets: 'profesional',
          title: 'Professional',
          titleColor: const Color(0xff1339a4),
          subTitle: '02 Steps Left',
          subTitleColor: Colors.grey[600],
        ),
      ],
    );
  }
}
