import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:tomisha_test/utils/rps_custom_paint.dart';
import 'package:tomisha_test/utils/styles.dart';

class ItemTwo extends StatelessWidget {
  final String title;
  final String picture;
  final bool isWithPicture;
  const ItemTwo({
    Key? key,
    required this.title,
    required this.picture,
    required this.size,
    required this.isWithPicture,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size.width, (size.width * 0.7115384615384616).toDouble()),
      painter: RPSCustomPainter(),
      child: Stack(
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
                      Visibility(
                        visible: isWithPicture,
                        child: Positioned(
                          top: 10,
                          right: 40,
                          child: Padding(
                            padding: EdgeInsets.only(
                                right:
                                    size.width < 650 ? 10 : size.width * .25),
                            child: Text(
                              title,
                              textAlign: TextAlign.left,
                              style: AppStyles.black14,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const Gap(70),
                ],
              ),
              const Gap(90),
            ],
          ),
          Positioned(
              top: 50,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.only(
                    left: size.width < 650 ? 10 : size.width * .25),
                child: Row(
                  mainAxisAlignment: size.width < 650
                      ? MainAxisAlignment.spaceBetween
                      : MainAxisAlignment.start,
                  children: [
                    Text(
                      "2.",
                      style: AppStyles.black130,
                    ),
                    Visibility(
                      visible: !isWithPicture,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: size.width < 650 ? 0 : size.width * .065),
                        child: Text(
                          title,
                          textAlign: TextAlign.left,
                          style: AppStyles.black14,
                        ),
                      ),
                    ),
                    const Gap(0)
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
