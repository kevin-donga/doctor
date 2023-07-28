import 'dart:developer';

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:doctor/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bottom_navbar_controller.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(BottomNavBarController());
    return SafeArea(
      top: false,
      child: Scaffold(
        body: GetBuilder<BottomNavBarController>(
            id: 'BottomNavBarController',
            builder: (controller) {
              return PageView(
                controller: controller.pageController,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(controller.screen.length,
                    (index) => controller.screen[index]),
              );
            }),
        extendBody: true,
        bottomNavigationBar: GetBuilder<BottomNavBarController>(
          // id: 'BottomNavBarController',
          builder: (controller) {
            return (controller.screen.length <= controller.maxCount)
                ? AnimatedNotchBottomBar(
                    notchBottomBarController: controller.notchController,
                    color: Colors.white,
                    showLabel: true,
                    notchColor: Colors.blue.shade100,
                    removeMargins: false,
                    bottomBarWidth: 500,
                    durationInMilliSeconds: 300,
                    bottomBarItems: List.generate(
                      controller.bottomItem.length,
                      (index) => BottomBarItem(
                        inActiveItem: Icon(
                          controller.bottomItem[index]['inactivateIcon'],
                          color: Colors.blueGrey,
                        ),
                        activeItem: Icon(
                          controller.bottomItem[index]['ActivateIcon'],
                          color: Colors.blueAccent,
                        ),
                        itemLabel: controller.bottomItem[index]['text'],
                      ),
                    ),
                    onTap: controller.onTapBotomBar)
                : const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
