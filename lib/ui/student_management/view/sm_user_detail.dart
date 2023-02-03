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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SmAppBar().animate().fade().slideY(
                  duration: 850.ms,
                  begin: -0.5,
                  curve: Curves.easeInOutCubic,
                ),
            const SizedBox(height: 30),
            const SmTopContent().animate().shimmer(
                  delay: 850.ms,
                  duration: 850.ms,
                ),
            const SizedBox(height: 30),
            const SmMidContent(),
            const SizedBox(height: 40),
            const SmBottomContent(),
            const SizedBox(height: 50),
            const SmSignOut().animate().fade().slideY(
                  begin: 1.5,
                  duration: 850.ms,
                  curve: Curves.easeInOutCubic,
                ),
          ],
        ),
      ),
    );
  }
}
