import 'package:doctor/common_widget/common_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../common_widget/common_elevated_button.dart';
import '../../common_widget/common_textfield.dart';
import '../../utils/asset_res.dart';
import '../../utils/color_res.dart';
import '../../utils/icon_res.dart';
import '../../utils/string_res.dart';
import '../bottom_navbar/bottom_navbar.dart';
import 'login_screen_controller.dart';

double height = Get.height;
double width = Get.width;

Widget topImageLogin() {
  return Image.asset(
    AssetRes.splashScreen1,
    height: 150,
  );
}

Widget middleTextLogin() {
  return commonText(
      data: StringRes.loginScreenMiddleString,
      fontSize: 24,
      fontWeight: FontWeight.bold,
      fontFamily: StringRes.josefinSans);
}

Widget emailTextFieldLogin() {
  return GetBuilder<LoginController>(builder: (controller) {
    return textField(
      controller: controller.emailController,
      validator: controller.emailCondition,
      hintText: StringRes.emailTextFieldHintText,
      prefixIcon: const Icon(Icons.email),
      fillColor: Colors.blueGrey.shade50,
      filled: true,
      obscureText: false,
      maxLines: 1,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
    );
  });
}

Widget passTextFieldLogin() {
  return GetBuilder<LoginController>(
      id: 'LoginController',
      builder: (controller) {
        return textField(
          obscureText: controller.visiBal ? true : false,
          hintText: StringRes.passTextFieldHintText,
          prefixIcon: const Icon(Icons.lock),
          maxLines: 1,
          validator: controller.passwordCondition,
          controller: controller.passController,
          suffixIcon: IconButton(
            onPressed: () => controller.passSuFix(),
            icon: Icon(
              controller.visiBal ? IconRes.visiBalOffIcon : IconRes.visiBalIcon,
            ),
          ),
          fillColor: Colors.blueGrey.shade50,
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
        );
      });
}

Widget forgetPassTextLogin() {
  return GetBuilder<LoginController>(builder: (controller) {
    return InkWell(
      onTap: () => controller.forgetPassText(),
      child: commonText(data: StringRes.forgetPasswordText, color: Colors.blue),
    );
  });
}

Widget loginButton() {
  return GetBuilder<LoginController>(
    id: "loginButton",
    builder: (controller) {
      return SizedBox(
        width: Get.width * 0.802,
        height: Get.height * 0.06,
        child: commonElevatedButton(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(height * 0.25),
            ),
          ),
          onPressed: () => controller.loginButton(),
          widget: commonText(
            data: StringRes.loginButtonText,
            fontFamily: StringRes.josefinSans,
            fontWeight: FontWeight.bold,
            color: ColorRes.whiteColor,
            fontSize: 18,
          ),
        ),
      );
    },
  );
}

Widget newUserTextLogin() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      commonText(
        data: StringRes.newUserText,
        color: Colors.black.withOpacity(0.5),
      ),
      GetBuilder<LoginController>(builder: (controller) {
        return InkWell(
          onTap: () => controller.newUserTextLogin(),
          child: commonText(
              data: StringRes.newUserWithSignUpText, color: Colors.blue),
        );
      }),
    ],
  );
}
