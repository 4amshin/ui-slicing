// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LessonItem {
  final String? title;
  final Color? titleColor;
  final String? subTitle;
  final Color? subTitleColor;
  final String? iconAsset;
  final int? progress;
  final Color? progressBar;
  final Color? backgroundColor;
  LessonItem({
    this.title,
    this.titleColor,
    this.subTitle,
    this.subTitleColor,
    this.iconAsset,
    this.progress,
    this.progressBar,
    this.backgroundColor,
  });
}

List<LessonItem> lessons = [
  LessonItem(
    title: 'Reading',
    titleColor: const Color(0xff1339a4),
    subTitle: 'You complete 40%',
    subTitleColor: Colors.grey[400],
    iconAsset: 'book_logo.svg',
    progress: 40,
    progressBar: const Color(0xff89b4ff),
    backgroundColor: Colors.grey[100],
  ),
  LessonItem(
    title: 'Listening',
    titleColor: Colors.white,
    subTitle: 'You complete 65%',
    iconAsset: 'listening.svg',
    progress: 65,
    progressBar: const Color(0xffdd605e),
    backgroundColor: const Color(0xfffec6c7),
  ),
  LessonItem(
    title: 'Learner',
    titleColor: const Color(0xff1339a4),
    subTitle: 'You complete 46%',
    subTitleColor: Colors.grey[400],
    iconAsset: 'learner.svg',
    progress: 46,
    progressBar: const Color(0xffb894eb),
    backgroundColor: Colors.grey[100],
  ),
  LessonItem(
    title: 'Speaking',
    titleColor: const Color(0xff1339a4),
    subTitle: 'You complete 85%',
    subTitleColor: Colors.grey[400],
    iconAsset: 'speaking.svg',
    progress: 85,
    progressBar: const Color(0xfff4be44),
    backgroundColor: Colors.grey[100],
  ),
];
