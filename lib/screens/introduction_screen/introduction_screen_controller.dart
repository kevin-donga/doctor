import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../login_screen/login_screen.dart';

class IntroductionScreenController extends GetxController {
  int index = 0;
  int pageIndex = 0;
  PageController pageController = PageController();
  PageController textPageController = PageController();

  void introductionPageBottomButton() {
    if (pageIndex != 2) {
      pageController.nextPage(
          duration: const Duration(seconds: 1), curve: Curves.ease);
    } else {
      Get.to( LoginScreen());
    }
    update(['introductionScreen']);
  }

  void imagePageViewOfIntroductionScreen(int value){
    pageIndex = value;
    update(['introductionScreen']);
  }
}
