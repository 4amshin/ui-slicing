import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ui_slicing/ui/student_management/theme/color_theme.dart';
import 'ui/student_management/model/lesson_item.dart';
import 'ui/student_management/widget/home_page_widget/sm_home_app_bar.dart';
import 'ui/student_management/widget/home_page_widget/sm_home_item_card.dart';
import 'ui/student_management/widget/home_page_widget/sm_home_tab_bar.dart';

class TestSite extends StatefulWidget {
  const TestSite({Key? key}) : super(key: key);

  @override
  _TestSiteState createState() => _TestSiteState();
}

class _TestSiteState extends State<TestSite> {
  final Random _random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: const Text(
          "Test Site",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }
}
