// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import 'package:tomisha_test/utils/styles.dart';

class ItemThree extends StatelessWidget {
  final String title;
  final Size size;
  final String picture;
  const ItemThree({
    Key? key,
    required this.title,
    required this.size,
    required this.picture,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const Gap(200),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          right: size.width < 650 ? 10 : size.width * .25),
                      child: Column(
                        children: [
                          SvgPicture.asset(picture),
                        ],
                      ),
                    ),
                  ],
                ),
                const Gap(70),
              ],
            ),
            const Gap(150),
          ],
        ),
        Positioned(
            top: 20,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: size.width < 650 ? 10 : size.width * .25),
                  child: Column(
                    children: [
                      Text(
                        "3.",
                        style: AppStyles.black130,
                      ),
                    ],
                  ),
                ),
              ],
            )),
        Positioned(
          top: 120,
          right: 40,
          child: Padding(
            padding: EdgeInsets.only(
                right: size.width < 650 ? 10 : size.width * .35),
            child: Text(
              title,
              textAlign: TextAlign.left,
              style: AppStyles.black14,
            ),
          ),
        )
      ],
    );
  }
}
