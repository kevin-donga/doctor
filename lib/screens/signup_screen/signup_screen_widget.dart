import 'package:doctor/screens/signup_screen/signup_screen_controller.dart';
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

Widget nameTextFieldSignUp() {
  return textField(
    hintText: StringRes.nameTextFieldHintText,
    prefixIcon: const Icon(IconRes.personIcon),
    fillColor: Colors.blueGrey.shade50,
    filled: true,
    obscureText: false,
  );
}

Widget mobileTextFieldSignUp() {
  return textField(
    hintText: StringRes.mobileTextFieldHintText,
    prefixIcon: const Icon(IconRes.phoneIcon),
    fillColor: Colors.blueGrey.shade50,
    filled: true,
    obscureText: false,
  );
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

Widget radioButton() {
  return GetBuilder<SignupScreenController>(
      id: 'radioButton',
      builder: (controller) {
        return Container(
          height: Get.height * 0.07,
          width: Get.width * 0.802,
          decoration: BoxDecoration(
            color: Colors.blueGrey.shade50,
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.grey.shade700),
          ),
          child: Row(
            children: [
              Radio(
                value: controller.male,
                groupValue: controller.group,
                onChanged: controller.radioButtonCondition,
              ),
              const Text("Male"),
              Radio(
                value: controller.female,
                groupValue: controller.group,
                onChanged: controller.radioButtonCondition,
              ),
              const Text("Female"),
              Radio(
                value: controller.other,
                groupValue: controller.group,
                onChanged: controller.radioButtonCondition,
              ),
              const Text("Other"),
            ],
          ),
        );
      });
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
    return SizedBox(
      width: Get.width*0.802,
      height: Get.height * 0.06,
      child: commonElevatedButton(
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(height * 0.25))),
        onPressed: () => controller.signUpButton(),
        widget: commonText(
          data: StringRes.signupButtonText,
          fontFamily: StringRes.josefinSans,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
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
        fontFamily: StringRes.josefinSans,
        fontWeight: FontWeight.bold,
      ),
      GetBuilder<SignupScreenController>(builder: (controller) {
        return InkWell(
          onTap: () => controller.alreadydUserTextSignUp(),
          child: commonText(
              fontFamily: StringRes.josefinSans,
              fontWeight: FontWeight.bold,
              data: StringRes.alreadyUserWithSignInText,
              color: Colors.blue),
        );
      }),
    ],
  );
}
