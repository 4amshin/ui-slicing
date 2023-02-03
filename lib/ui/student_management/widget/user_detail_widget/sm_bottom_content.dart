import 'package:flutter/material.dart';

import '../../theme/color_theme.dart';
import 'sm_lesson_list.dart';

class SmBottomContent extends StatelessWidget {
  const SmBottomContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Complete Profile",
          style: TextStyle(
            fontSize: 15,
            color: smPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15),
        SmLessonList(),
      ],
    );
  }
}
