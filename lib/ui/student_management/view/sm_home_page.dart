import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_slicing/ui/student_management/widget/home_page_widget/sm_home_app_bar.dart';
import 'package:ui_slicing/ui/student_management/widget/home_page_widget/sm_home_tab_bar.dart';

import '../model/lesson_item.dart';

class SmHomePage extends StatelessWidget {
  const SmHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1339a4),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SmHomeAppBar(),
                  SizedBox(
                    height: 35.0,
                  ),
                  Text(
                    "Category",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Choose your desire suject!",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white54,
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  SmHomeTabBar(),
                  SizedBox(height: 30.0),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 450,
              padding: const EdgeInsets.all(25),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Your Courses",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff1339a4),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xfff1d0d7),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 0.78,
                      children: List.generate(lessons.length, (index) {
                        LessonItem item = lessons[index];
                        return Container(
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: item.backgroundColor,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: CircleAvatar(
                                  radius: 28,
                                  backgroundColor: Colors.white,
                                  child: SvgPicture.asset(
                                    'assets/icons/student_management/${item.iconAsset}',
                                    height: 25,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15.0),
                              Text(
                                item.title!,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: item.titleColor ?? Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 3.0),
                              Text(
                                item.subTitle!,
                                style: TextStyle(
                                  fontSize: 9,
                                  color: item.subTitleColor ?? Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 7,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(16.0),
                                  ),
                                ),
                                child: Container(
                                  width: item.progress?.toDouble(),
                                  decoration: BoxDecoration(
                                    color: item.progressBar,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(16.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
