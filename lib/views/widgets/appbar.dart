import 'package:flutter/material.dart';
import 'package:tomisha_test/utils/styles.dart';

class DeineAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DeineAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        height: 67,
        padding: const EdgeInsets.only(right: 20),
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color(0xff000029),
                  offset: Offset(0, 3),
                  blurStyle: BlurStyle.outer,
                  blurRadius: 6.0)
            ],
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12))),
        child:
            const Align(alignment: Alignment.centerRight, child: Text("Login")),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, 70);
}
