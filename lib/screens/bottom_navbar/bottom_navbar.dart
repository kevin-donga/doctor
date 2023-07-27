import 'dart:developer';

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
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
        body: GetBuilder<BottomNavBarController>(builder: (controller) {
          return PageView(
            controller: controller.pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(
                controller.screen.length, (index) => controller.screen[index]),
          );
        }),
        extendBody: true,
        bottomNavigationBar: GetBuilder<BottomNavBarController>(
          builder: (controller) {
            return (controller.screen.length <= controller.maxCount)
                ? AnimatedNotchBottomBar(
                    notchBottomBarController: controller.notchController,
                    color: Colors.white,
                    showLabel: false,
                    notchColor: Colors.blue.shade100,
                    removeMargins: false,
                    bottomBarWidth: 500,
                    durationInMilliSeconds: 300,
                    bottomBarItems: const [
                      BottomBarItem(
                        inActiveItem: Icon(
                          Icons.home_outlined,
                          color: Colors.blueGrey,
                        ),
                          activeItem: Icon(
                          Icons.home,
                          color: Colors.blueAccent,
                        ),
                        itemLabel: 'Page 1',
                      ),
                      BottomBarItem(
                        inActiveItem: Icon(
                          Icons.star,
                          color: Colors.blueGrey,
                        ),
                        activeItem: Icon(
                          Icons.star,
                          color: Colors.blueAccent,
                        ),
                        itemLabel: 'Page 2',
                      ),
                      BottomBarItem(
                        inActiveItem: Icon(
                          Icons.settings,
                          color: Colors.blueGrey,
                        ),
                        activeItem: Icon(
                          Icons.settings,
                          color: Colors.blueAccent,
                        ),
                        itemLabel: 'Page 4',
                      ),
                      BottomBarItem(
                        inActiveItem: Icon(
                          Icons.note_add_outlined,
                          color: Colors.blueGrey,
                        ),
                        activeItem: Icon(
                          Icons.note_add_rounded,
                          color: Colors.blueAccent,
                        ),
                        itemLabel: 'Page 5',
                      ),
                      BottomBarItem(
                        inActiveItem: Icon(
                          Icons.person_2_outlined,
                          color: Colors.blueGrey,
                        ),
                        activeItem: Icon(
                          Icons.person,
                          color: Colors.blueAccent,
                        ),
                        itemLabel: 'Page 5',
                      ),
                    ],
                    onTap: (index) {
                      log('current selected index $index');
                      controller.pageController.jumpToPage(index);
                    },
                  )
                : const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
