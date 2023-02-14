import 'package:flutter/material.dart';
import 'package:ui_slicing/ui/barber_ui/widget/br_home_widget/br_banner_list.dart';
import 'package:ui_slicing/ui/barber_ui/widget/br_home_widget/br_home_view_more_button.dart';
import 'package:ui_slicing/ui/barber_ui/widget/br_home_widget/br_styles_option.dart';

import '../../widget/br_home_widget/br_home_app_bar.dart';

class BrHomePage extends StatelessWidget {
  const BrHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(20),
        child: ListView(
          children: const [
            BrHomeAppBar(),
            SizedBox(height: 25),
            BrBannerList(),
            SizedBox(height: 25),
            BrStylesOption(),
            SizedBox(height: 20),
            BrHomeViewMoreButton(),
          ],
        ),
      ),
    );
  }
}
