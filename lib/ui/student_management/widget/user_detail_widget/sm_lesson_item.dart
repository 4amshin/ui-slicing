import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SmLessonItem extends StatelessWidget {
  final String? imgAssets;
  final String? title;
  final String? subTitle;
  final Color? titleColor;
  final Color? subTitleColor;
  final Color? backgroundColor;
  const SmLessonItem({
    Key? key,
    this.imgAssets,
    this.title,
    this.subTitle,
    this.titleColor,
    this.subTitleColor,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 25,
      ),
      width: MediaQuery.of(context).size.width / 2.5,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.indigo,
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: SvgPicture.asset(
                'assets/icons/student_management/${imgAssets ?? 'education'}.svg',
                height: 35,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            title ?? "Title Here",
            style: TextStyle(
              fontSize: 13.0,
              color: titleColor ?? Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            subTitle ?? "Sub Title Here",
            style: TextStyle(
              fontSize: 11.0,
              color: subTitleColor ?? Colors.white38,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
