import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:tomisha_test/utils/styles.dart';

class ItemOne extends StatelessWidget {
  final String title;
  final String picture;
  final Size size;
  const ItemOne({
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
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  right: size.width < 650 ? 10 : size.width * .25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(picture),
                  const Gap(70),
                ],
              ),
            ),
            const Gap(90),
          ],
        ),
        Positioned(
            bottom: 0,
            child: Padding(
              padding: EdgeInsets.only(
                  left: size.width < 650 ? 10 : size.width * .25),
              child: Text(
                "1.",
                style: AppStyles.black130,
              ),
            )),
        Positioned(
          bottom: 35,
          right: size.width < 650 ? 120 : 140,
          child: Padding(
            padding:
                EdgeInsets.only(right: size.width < 650 ? 0 : size.width * .25),
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
