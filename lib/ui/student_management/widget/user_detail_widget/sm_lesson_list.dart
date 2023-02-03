import 'package:flutter/material.dart';

import '../../theme/color_theme.dart';
import 'sm_lesson_item.dart';

class SmLessonList extends StatelessWidget {
  const SmLessonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SmLessonItem(
          backgroundColor: smPrimary,
          imgAssets: 'education',
          title: 'Education',
          subTitle: '04 Steps Left',
        ),
        SmLessonItem(
          backgroundColor: Colors.grey[200],
          imgAssets: 'profesional',
          title: 'Professional',
          titleColor: smPrimary,
          subTitle: '02 Steps Left',
          subTitleColor: Colors.grey[600],
        ),
      ],
    );
  }
}
