import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_slicing/ui/student_management/widget/sm_app_bar.dart';
import 'package:ui_slicing/ui/student_management/widget/sm_bottom_content.dart';
import 'package:ui_slicing/ui/student_management/widget/sm_join_time.dart';
import 'package:ui_slicing/ui/student_management/widget/sm_lesson_filter.dart';
import 'package:ui_slicing/ui/student_management/widget/sm_lesson_item.dart';
import 'package:ui_slicing/ui/student_management/widget/sm_lesson_list.dart';
import 'package:ui_slicing/ui/student_management/widget/sm_mid_content.dart';
import 'package:ui_slicing/ui/student_management/widget/sm_sign_out.dart';
import 'package:ui_slicing/ui/student_management/widget/sm_top_content.dart';
import 'package:ui_slicing/ui/student_management/widget/sm_top_profile_pic.dart';
import 'package:ui_slicing/ui/student_management/widget/sm_user_status.dart';

import '../widget/sm_rounded_book.dart';

class SmHomePage extends StatelessWidget {
  const SmHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SmAppBar(),
            SizedBox(height: 20),
            SmTopContent(),
            SizedBox(height: 20),
            SmMidContent(),
            SizedBox(height: 30),
            SmBottomContent(),
            SizedBox(height: 45.0),
            SmSignOut(),
          ],
        ),
      ),
    );
  }
}
