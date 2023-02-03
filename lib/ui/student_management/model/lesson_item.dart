// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../theme/color_theme.dart';

class LessonItem {
  final String? title;
  final Color? titleColor;
  final String? subTitle;
  final Color? subTitleColor;
  final String? iconAsset;
  final int? progress;
  final Color? progressBarColor;
  final Color? backgroundColor;
  LessonItem({
    this.title,
    this.titleColor,
    this.subTitle,
    this.subTitleColor,
    this.iconAsset,
    this.progress,
    this.progressBarColor,
    this.backgroundColor,
  });
}

List<LessonItem> lessons = [
  LessonItem(
    title: 'Reading',
    titleColor: smPrimary,
    subTitle: 'You complete 40%',
    subTitleColor: smHardGrey,
    iconAsset: 'book_logo.svg',
    progress: 40,
    progressBarColor: smLightBlue,
    backgroundColor: smMediumGrey,
  ),
  LessonItem(
    title: 'Listening',
    titleColor: Colors.white,
    subTitle: 'You complete 65%',
    iconAsset: 'listening.svg',
    progress: 65,
    progressBarColor: smHardPink,
    backgroundColor: smLightPink,
  ),
  LessonItem(
    title: 'Learner',
    titleColor: smPrimary,
    subTitle: 'You complete 46%',
    subTitleColor: smHardGrey,
    iconAsset: 'learner.svg',
    progress: 46,
    progressBarColor: smMediumIndigo,
    backgroundColor: smMediumGrey,
  ),
  LessonItem(
    title: 'Speaking',
    titleColor: smPrimary,
    subTitle: 'You complete 85%',
    subTitleColor: smHardGrey,
    iconAsset: 'speaking.svg',
    progress: 85,
    progressBarColor: smLightYellow,
    backgroundColor: smMediumGrey,
  ),
  LessonItem(
    title: 'Learner',
    titleColor: smPrimary,
    subTitle: 'You complete 46%',
    subTitleColor: smHardGrey,
    iconAsset: 'learner.svg',
    progress: 46,
    progressBarColor: smMediumIndigo,
    backgroundColor: smMediumGrey,
  ),
  LessonItem(
    title: 'Speaking',
    titleColor: smPrimary,
    subTitle: 'You complete 85%',
    subTitleColor: smHardGrey,
    iconAsset: 'speaking.svg',
    progress: 85,
    progressBarColor: smLightYellow,
    backgroundColor: smMediumGrey,
  ),
];
