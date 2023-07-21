import 'package:doctor/screens/introduction_screen/introduction_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'introduction_screen_controller.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(IntroductionScreenController());
    return Scaffold(
      body: GetBuilder<IntroductionScreenController>(builder: (controller) {
        return Column(
          children: [
            imageViewSwipable(),
          ],
        );
      }),
    );
  }
}
