import 'package:doctor/screens/splash_screen/02_splash_screen_widget.dart';
import 'package:doctor/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common_widget/common_container.dart';
import '../../common_widget/common_text.dart';
import '../../common_widget/swiped_common_dot_.dart';
import '../../utils/asset_res.dart';
import 'introduction_screen_controller.dart';

double height = Get.height;
double width = Get.width;

Widget skipButton() {
  return TextButton(
      onPressed: () {}, child: const Text(StringRes.skipTextButton));
}

Widget imageViewSwipable() {
  return GetBuilder<IntroductionScreenController>(
      id: 'introductionScreen',
      builder: (controller) {
        return SizedBox(
          height: height,
          child: Stack(
            children: [
              Container(
                  height: double.infinity,
                  width: width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage(AssetRes.introductionBackgroundCircle),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    children: [
                      imageSwipeView(),
                      SizedBox(
                        height: height * 0.18,
                      ),
                    ],
                  )),
              Positioned(
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.all(h * 0.030),
                  height: height * 0.40,
                  width: width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            commonDot(
                                index: controller.index = 0,
                                pageIndex: controller.pageIndex),
                            commonDot(
                                index: controller.index = 1,
                                pageIndex: controller.pageIndex),
                            commonDot(
                                index: controller.index = 2,
                                pageIndex: controller.pageIndex),
                          ]),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      // titleView(),
                      if (controller.pageIndex == 0) ...{
                        textOfView(data: StringRes.textPageView1)
                      } else if (controller.pageIndex == 1) ...{
                        textOfView(data: StringRes.textPageView2)
                      } else ...{
                        textOfView(data: StringRes.textPageView3)
                      },
                      nextButton(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      });
}

List<Map> data = [
  {
    'image': AssetRes.doctorThumb1,
  },
  {
    'image': AssetRes.doctorThumb2,
  },
  {
    'image': AssetRes.doctorThumb3,
  },
];

Widget imageSwipeView() {
  return GetBuilder<IntroductionScreenController>(
      id: 'introductionScreen',
      builder: (controller) {
        return Expanded(
          child: PageView.builder(
            onPageChanged: controller.imagePageViewOfIntroductionScreen,
            physics: const BouncingScrollPhysics(),
            itemCount: data.length,
            controller: controller.pageController,
            itemBuilder: (context, index) {
              return Image.asset(data[index]['image']);
            },
          ),
        );
      });
}

Widget textOfView({
  required String data,
}) {
  return SizedBox(
      height: height * 0.20,
      child: commonText(
        data: data,
        fontSize: 33,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
        textAlign: TextAlign.center,
        fontFamily: 'Josefin Sans',
      ));
}

Widget bottomIntroductionButton(
    {required void Function() onTap, required String text}) {
  return InkWell(
    overlayColor: const MaterialStatePropertyAll(Colors.transparent),
    onTap: onTap,
    child: commonContainer(
      height: 50,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: Colors.blue),
      child: commonText(
        data: text,
        color: Colors.white,
        fontFamily: 'Josefin Sans',
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget nextButton() {
  return GetBuilder<IntroductionScreenController>(
      id: 'introductionScreen',
      builder: (controller) {
        return bottomIntroductionButton(
          onTap: controller.introductionPageBottomButton,
          text: controller.pageIndex == 2 ? 'Get Started' : 'Next',
        );
      });
}
