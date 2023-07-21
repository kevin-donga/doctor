import 'package:doctor/screens/signup_screen/signup_screen_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../common_widget/common_elevated_button.dart';
import '../../common_widget/common_text.dart';
import '../../common_widget/common_textfield.dart';
import '../../utils/asset_res.dart';
import '../../utils/icon_res.dart';
import '../../utils/string_res.dart';

double height = Get.height;
double width = Get.width;

Widget topImageSignUp() {
  return Image.asset(
    AssetRes.splashScreen1,
    height: 150,
  );
}

Widget middleTextSignUp() {
  return commonText(
      data: StringRes.signUpScreenMiddleString,
      fontSize: 24,
      fontWeight: FontWeight.bold,
      fontFamily: StringRes.josefinSans);
}

Widget emailTextFieldSignUp() {
  return textField(
    hintText: StringRes.emailTextFieldHintText,
    prefixIcon: const Icon(Icons.email),
    fillColor: Colors.blueGrey.shade50,
    filled: true,
    obscureText: false,
  );
}

Widget passTextFieldSignUp() {
  return GetBuilder<SignupScreenController>(
      id: 'LoginController',
      builder: (controller) {
        return textField(
          obscureText: controller.visiBal ? true : false,
          hintText: StringRes.passTextFieldHintText,
          prefixIcon: const Icon(Icons.lock),
          suffixIcon: IconButton(
            onPressed: () => controller.passSuFix(),
            icon: Icon(
              controller.visiBal ? IconRes.visiBalOffIcon : IconRes.visiBalIcon,
            ),
          ),
          fillColor: Colors.blueGrey.shade50,
          filled: true,
        );
      });
}

Widget signUpButton() {
  return GetBuilder<SignupScreenController>(builder: (controller) {
    return commonElevatedButton(
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(height * 0.25))),
      onPressed: () => controller.signUpButton(),
      widget: Padding(
        padding: EdgeInsets.only(
          left: width * 0.32,
          right: width * 0.32,
          top: height * 0.02,
          bottom: height * 0.02,
        ),
        child: FittedBox(child: commonText(data: StringRes.signupButtonText)),
      ),
    );
  });
}

Widget alreadydUserTextSignUp() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      commonText(
        data: StringRes.alreadyUserText,
        color: Colors.black.withOpacity(0.5),
      ),
      GetBuilder<SignupScreenController>(builder: (controller) {
        return InkWell(
          onTap: () => controller.alreadydUserTextSignUp(),
          child: commonText(
              data: StringRes.alreadyUserWithSignInText, color: Colors.blue),
        );
      }),
    ],
  );
}