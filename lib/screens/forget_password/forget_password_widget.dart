import 'package:doctor/common_widget/common_elevated_button.dart';
import 'package:doctor/common_widget/common_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common_widget/common_text.dart';
import '../../utils/asset_res.dart';
import '../../utils/color_res.dart';
import '../../utils/icon_res.dart';
import '../../utils/string_res.dart';
import 'forget_password_controller.dart';

double height = Get.height;
double width = Get.width;

Widget topContainer() {
  return GetBuilder<ForgotController>(builder: (controller) {
    return Row(
      children: [
        IconButton(
          onPressed: () => controller.iconButton(),
          icon: const Icon(
            IconRes.backArrowIcon,
            color: ColorRes.blackColor,
          ),
        ),
        commonText(
            data: StringRes.forgotText,
            color: ColorRes.blackColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontFamily: StringRes.josefinSans),
      ],
    );
  });
}

Widget topImageForgot() {
  return Column(
    children: [
      Image.asset(
        AssetRes.forgotScreen,
        height: Get.height * 0.30,
      ),
      Padding(
        padding: const EdgeInsets.all(50.0),
        child: commonText(
            data: StringRes.forgotText1,
            color: ColorRes.blackColor,
            fontWeight: FontWeight.bold,
            fontFamily: StringRes.josefinSans,
            fontSize: 15),
      )
    ],
  );
}

Widget mobileTextField() {
  return GetBuilder<ForgotController>(builder: (controller) {
    return Container(
      height: Get.height * 0.07,
      width: Get.width * 0.8,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: ColorRes.blackColor),
        borderRadius: BorderRadius.circular(
          Get.width * 0.076,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: Get.width * 0.026,
            ),
            child: SizedBox(
              width: Get.width * 0.1041,
              child: TextField(
                controller: controller.countryController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: Get.width * 0.026),
            child: Text(
              "|",
              style: TextStyle(
                  fontSize: Get.height * 0.0393, color: ColorRes.blackColor),
            ),
          ),
          Expanded(
            child: TextFormField(
              controller: controller.mobileController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: StringRes.mobileText,
              ),
            ),
          ),
        ],
      ),
    );
  });
}

Widget emailTextFieldForgot() {
  return SizedBox(
    width: Get.width * 0.80,
    child: textField(
      obscureText: true,
      prefixIcon: const Icon(IconRes.emailIcon),
      hintText: StringRes.emailTextFieldHintText,
    ),
  );
}

Widget forgotButton() {
  return GetBuilder<ForgotController>(builder: (controller) {
    return commonElevatedButton(
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(height * 0.25))),
      onPressed: () => controller.forgotButton(),
      widget: Padding(
        padding: EdgeInsets.only(
          left: width * 0.32,
          right: width * 0.30,
          top: height * 0.02,
          bottom: height * 0.02,
        ),
        child: commonText(
            data: StringRes.forgot,
            color: ColorRes.whiteColor,
            fontFamily: StringRes.josefinSans,
            fontWeight: FontWeight.bold),
      ),
    );
  });
}
