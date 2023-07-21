import 'package:doctor/screens/signup_screen/signup_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common_widget/common_text.dart';
import '../../utils/string_res.dart';

double height = Get.height;
double width = Get.width;

Widget alreadydUserTextLogin() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      commonText(
        data: StringRes.newUserText,
        color: Colors.black.withOpacity(0.5),
      ),
      GetBuilder<SignupScreenController>(builder: (controller) {
        return InkWell(
        //  onTap: () => controller.newUserTextLogin(),
          child: commonText(
              data: StringRes.newUserWithSignUpText, color: Colors.blue),
        );
      }),
    ],
  );
}