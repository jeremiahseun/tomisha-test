// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import 'package:tomisha_test/utils/styles.dart';
import 'package:tomisha_test/views/widgets/appbar.dart';
import 'package:tomisha_test/views/widgets/tabbar_view.dart';

class MobileHomepage extends StatefulWidget {
  const MobileHomepage({super.key});

  @override
  State<MobileHomepage> createState() => _MobileHomepageState();
}

class _MobileHomepageState extends State<MobileHomepage> {
  int currentIndex = 0;
  final pageController = PageController();
  final scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const DeineAppBar(),
      body: Container(
        color: AppColors.background,
        child: ListView(
          controller: scrollController,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text("Deine Job website",
                      style: AppStyles.black42.copyWith(letterSpacing: 1.26)),
                ),
                Column(
                  children: [
                    SvgPicture.asset('assets/images/agree-hands.svg'),
                  ],
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12))),
                  child: Column(
                    children: [
                      const Gap(10),
                      InkWell(
                        onTap: () {},
                        child: Container(
                            height: 45,
                            margin: const EdgeInsets.all(20),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color(0xFF319795),
                                    Color(0xFF3182CE),
                                  ],
                                  stops: [0.0, 1.0],
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              "Kostenlos Registrieren",
                              style: AppStyles.black14
                                  .copyWith(color: AppColors.whiteColor),
                            )),
                      ),
                      const Gap(70),
                    ],
                  ),
                ),
              ],
            ),
            DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  Container(
                    height: 40,
                    margin: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.whiteColor,
                        border: Border.all(color: const Color(0xffCBD5E0))),
                    child: TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelColor: Colors.white,
                      indicator: BoxDecoration(
                        color: const Color(0xff81E6D9),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      onTap: (value) {
                        currentIndex = value;
                        setState(() {});
                        pageController.animateToPage(value,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOutQuart);
                      },
                      tabs: [
                        Container(
                          alignment: Alignment.center,
                          height: 34,
                          child: const Text(
                            "Arbeitnehmer",
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 34,
                          child: const Text(
                            "Arbeitgeber",
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 34,
                          child: const Text(
                            "Temporärbüro",
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height,
                    child: NotificationListener<ScrollNotification>(
                      onNotification: (ScrollNotification notification) {
                        if (notification is ScrollStartNotification ||
                            notification is ScrollUpdateNotification) {
                          // Scroll the parent scroll when child scroll reaches the top
                          if (notification.metrics.atEdge &&
                              notification.metrics.pixels == 0.0) {
                            scrollController.animateTo(
                              250,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );

                            return true;
                          }
                        }
                        return false;
                      },
                      child: PageView(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: pageController,
                        children: [
                          TabViewItem(
                              title:
                                  "Drei einfache Schritte zu deinem neuen Job",
                              stepOneTitle: "Erstellen dein Lebenslauf",
                              isWithPicture: false,
                              stepOnePicture: 'assets/images/profile-one.svg',
                              stepTwoTitle: "Erstellen dein Lebenslauf",
                              stepTwoPicture: 'assets/images/undraw-task.svg',
                              stepThreeTitle: "Mit nur einem Klick\nbewerben",
                              stepThreePicture:
                                  'assets/images/personal-file.svg',
                              size: size),
                          TabViewItem(
                              isWithPicture: true,
                              title:
                                  "Drei einfache Schritte zu deinem neuen Mitarbeiter",
                              stepOneTitle:
                                  "Erstellen dein\nUnternehmensprofil",
                              stepOnePicture: 'assets/images/profile-one.svg',
                              stepTwoTitle: "Erstellen ein Jobinserat",
                              stepTwoPicture: 'assets/images/about-two.svg',
                              stepThreeTitle:
                                  "Wähle deinen\nneuen Mitarbeiter aus",
                              stepThreePicture:
                                  'assets/images/swipe-profile-three.svg',
                              size: size),
                          TabViewItem(
                              isWithPicture: false,
                              title:
                                  "Drei einfache Schritte zur Vermittlung neuer Mitarbeiter",
                              stepOneTitle:
                                  "Erstellen dein\nUnternehmensprofil",
                              stepOnePicture: 'assets/images/profile-one.svg',
                              stepTwoTitle:
                                  "Erhalte Vermittlungs-\nangebot von Arbeitgeber",
                              stepTwoPicture:
                                  'assets/images/undraw-job-offers.svg',
                              stepThreeTitle:
                                  "Vermittlung nach\nProvision oder\nStundenlohn",
                              stepThreePicture:
                                  'assets/images/undraw-business-deal.svg',
                              size: size),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
