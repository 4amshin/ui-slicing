import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:ui_slicing/ui/student_management/widget/sm_join_time.dart';
import 'package:ui_slicing/ui/student_management/widget/sm_lesson_filter.dart';
import 'package:ui_slicing/ui/student_management/widget/sm_top_profile_pic.dart';
import 'package:ui_slicing/ui/student_management/widget/sm_user_status.dart';

import '../widget/sm_rounded_book.dart';

class SmHomePage extends StatelessWidget {
  const SmHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Color(0xff1339a4),
          size: 20,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.more_horiz,
              color: Color(0xff1339a4),
              size: 25,
            ),
          ),
        ],
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: const [
                SmTopProfilePic(),
                SizedBox(width: 65.0),
                SmJoinTime(),
              ],
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SmUserStatus(),
                  const SmLessonFilter(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
