import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../widget/user_detail_widget/sm_app_bar.dart';
import '../widget/user_detail_widget/sm_bottom_content.dart';
import '../widget/user_detail_widget/sm_mid_content.dart';
import '../widget/user_detail_widget/sm_sign_out.dart';
import '../widget/user_detail_widget/sm_top_content.dart';

class SmUserDetail extends StatelessWidget {
  const SmUserDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 25,
        ),
        child: ListView(
          children: const [
            SmAppBar(),
            SizedBox(height: 30),
            SmTopContent(),
            SizedBox(height: 30),
            SmMidContent(),
            SizedBox(height: 40),
            SmBottomContent(),
            SizedBox(height: 80),
            SmSignOut(),
          ],
        ),
      ),
    );
  }
}
