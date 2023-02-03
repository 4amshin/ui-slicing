import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_slicing/ui/student_management/widget/home_page_widget/sm_home_app_bar.dart';
import 'package:ui_slicing/ui/student_management/widget/home_page_widget/sm_home_lesson_list.dart';
import 'package:ui_slicing/ui/student_management/widget/home_page_widget/sm_home_tab_bar.dart';

import '../model/lesson_item.dart';
import '../widget/home_page_widget/sm_home_top_content.dart';

class SmHomePage extends StatelessWidget {
  const SmHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1339a4),
      body: Stack(
        children: const [
          SmHomeTopContent(),
          SmHomeLessonList(),
        ],
      ),
    );
  }
}
