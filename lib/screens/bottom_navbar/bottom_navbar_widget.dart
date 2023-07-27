/*import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common_widget/common_text.dart';
import 'bottom_navbar_controller.dart';*/

// double h = Get.height;
// double w = Get.width;

/*Widget bottom() {
  return GetBuilder<BottomNavBarController>(builder: (controller) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            height: h * 0.08,
            width: w,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
              color: Colors.white,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.bottom.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                controller.bottom[index]['icon'],
                                color: Colors.black45,
                              ),
                              commonText(
                                data: controller.bottom[index]['text'],
                                color: Colors.black45,
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                 Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.date_range,
                          color: Colors.black45,
                        ),
                        commonText(
                          data: 'Appointme..',
                          color: Colors.black45,
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.note_alt,
                          color: Colors.black45,
                        ),
                        commonText(
                          data: 'History ',
                          color: Colors.black45,
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.note_add_outlined,
                          color: Colors.black45,
                        ),
                        commonText(
                          data: 'Articles',
                          color: Colors.black45,
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.person,
                          color: Colors.black45,
                        ),
                        commonText(
                          data: 'Profile',
                          color: Colors.black45,
                        )
                      ],
                    ),
                ]),
          ),
        ),
      ],
    );
  });
}*/
// int maxCount = 5;
 // final NotchBottomBarController notchBottomBarController;

/*GetBuilder<BottomNavBarController> animatedBottomBar() {
  return GetBuilder(
    builder: (controller) {
      return AnimatedNotchBottomBar(
        notchBottomBarController: controller.notchBottomBarController,
        bottomBarItems: const [
          BottomBarItem(
            inActiveItem: Icon(
              Icons.home_filled,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.home_filled,
              color: Colors.blueAccent,
            ),
            itemLabel: 'Page 1',
          ),
        ],
        onTap: (int value) {},
        color: Colors.white,
        showLabel: false,
        notchColor: Colors.black87,
      );
    }
  );
}*/
