import 'package:flutter/material.dart';

class SmHomeTabBarItem extends StatelessWidget {
  final String? text;
  final Color? backgroundColor;
  final Color? textColor;
  final double? width;
  const SmHomeTabBarItem({
    Key? key,
    this.text,
    this.backgroundColor,
    this.width,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 80,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
      child: Center(
        child: Text(
          text ?? "Text",
          style: TextStyle(
            fontSize: 15.0,
            color: textColor ?? const Color(0xff1339a4),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
