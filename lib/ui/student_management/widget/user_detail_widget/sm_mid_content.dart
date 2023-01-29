import 'package:flutter/material.dart';

import 'sm_lesson_filter.dart';
import 'sm_user_status.dart';

class SmMidContent extends StatelessWidget {
  const SmMidContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        SmUserStatus(),
        SmLessonFilter(),
      ],
    );
  }
}
