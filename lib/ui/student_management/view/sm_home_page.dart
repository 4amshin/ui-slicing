import 'package:flutter/material.dart';
import 'package:ui_slicing/ui/student_management/theme/color_theme.dart';
import 'package:ui_slicing/ui/student_management/widget/home_page_widget/sm_home_lesson_list.dart';
import '../widget/home_page_widget/sm_home_top_content.dart';

class SmHomePage extends StatelessWidget {
  const SmHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: smPrimary,
      body: Column(
        children: const [
          SmHomeTopContent(),
          SmHomeLessonList(),
        ],
      ),
    );
  }
}
