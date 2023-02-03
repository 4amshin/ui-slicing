import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SmHomeItemCard extends StatelessWidget {
  final Color? backgroundColor;
  final String? iconAsset;
  final String? title;
  final Color? titleColor;
  final String? subTitle;
  final Color? subTitleColor;
  final int? progressPercent;
  final Color? progressColor;

  const SmHomeItemCard(
      {Key? key,
      this.backgroundColor,
      this.iconAsset,
      this.title,
      this.titleColor,
      this.subTitle,
      this.subTitleColor,
      this.progressPercent,
      this.progressColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: backgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              radius: 28,
              backgroundColor: Colors.white,
              child: SvgPicture.asset(
                'assets/icons/student_management/$iconAsset',
                height: 25,
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          Text(
            title ?? 'Title',
            style: TextStyle(
              fontSize: 15,
              color: titleColor ?? Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 3.0),
          Text(
            subTitle ?? 'Sub Title',
            style: TextStyle(
              fontSize: 9,
              color: subTitleColor ?? Colors.white,
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
            child: Stack(
              children: [
                Container(
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                  ),
                ),
                Container(
                  width: progressPercent?.toDouble(),
                  decoration: BoxDecoration(
                    color: progressColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
