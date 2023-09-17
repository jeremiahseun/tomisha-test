import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tomisha_test/utils/styles.dart';

import 'item_one.dart';
import 'item_two.dart';
import 'item_three.dart';

class TabViewItem extends StatelessWidget {
  final String title;
  final String stepOneTitle;
  final String stepOnePicture;
  final String stepTwoTitle;
  final String stepTwoPicture;
  final String stepThreeTitle;
  final String stepThreePicture;
  final bool isWithPicture;
  const TabViewItem({
    Key? key,
    required this.title,
    required this.stepOneTitle,
    required this.stepOnePicture,
    required this.stepTwoTitle,
    required this.isWithPicture,
    required this.stepTwoPicture,
    required this.stepThreeTitle,
    required this.stepThreePicture,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      child: ListView(
        shrinkWrap: true,
        children: [
          const Gap(10),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(title,
                style: AppStyles.black21, textAlign: TextAlign.center),
          ),
          const Gap(20.6),
          ItemOne(size: size,picture: stepOnePicture, title: stepOneTitle),
          ItemTwo(
              size: size,
              isWithPicture: isWithPicture,
              picture: stepTwoPicture,
              title: stepTwoTitle),
          ItemThree(
              size: size, picture: stepThreePicture, title: stepThreeTitle),
        ],
      ),
    );
  }
}
