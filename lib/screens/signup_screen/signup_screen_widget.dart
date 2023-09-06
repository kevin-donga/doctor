import 'package:doctor/screens/signup_screen/signup_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../common_widget/common_elevated_button.dart';
import '../../common_widget/common_text.dart';
import '../../common_widget/common_textfield.dart';
import '../../utils/asset_res.dart';
import '../../utils/color_res.dart';
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
  return GetBuilder<SignupScreenController>(
      id: 'NameTextFiled',
      builder: (controller) {
        return textField(
          controller: controller.nameController,
          validator: controller.nameCondition,
          onChanged: controller.nameOnchange,
          hintText: StringRes.nameTextFieldHintText,
          prefixIcon: const Icon(IconRes.personIcon),
          fillColor: Colors.blueGrey.shade50,
          filled: true,
          obscureText: false,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
        );
      });
}

Widget mobileTextFieldSignUp() {
  return GetBuilder<SignupScreenController>(
      id: 'NameTextFiled',
      builder: (controller) {
        return textField(
          controller: controller.mobileController,
          validator: controller.mobileCondition,
          maxLength: 10,
          hintText: StringRes.mobileTextFieldHintText,
          keyboardType: TextInputType.number,
          prefixIcon: const Icon(IconRes.phoneIcon),
          fillColor: Colors.blueGrey.shade50,
          filled: true,
          obscureText: false,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
        );
      });
}

Widget emailTextFieldSignUp() {
  return GetBuilder<SignupScreenController>(
      id: 'NameTextFiled',
      builder: (controller) {
        return textField(
          controller: controller.emailController,
          validator: controller.emailCondition,
          hintText: StringRes.emailTextFieldHintText,
          prefixIcon: const Icon(Icons.email),
          fillColor: Colors.blueGrey.shade50,
          filled: true,
          obscureText: false,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
        );
      });
}

Widget textFieldDate() {
  return GetBuilder<SignupScreenController>(
    id: "NameTextFiled",
    builder: (controller) {
      return textField(
        onTap: controller.birthDateOnTap,
        controller: controller.birtDateController,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        fillColor: Colors.blueGrey.shade50,
        filled: true,
        prefixIcon: const Icon(Icons.date_range),
        hintText: StringRes.dateTextFieldHintText,
        obscureText: false,
      );
    },
  );
}

Widget radioButton() {
  return GetBuilder<SignupScreenController>(
      id: 'radioButton',
      builder: (controller) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: Get.height * 0.07,
              width: Get.width * 0.804,
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade50,
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                    color: controller.genderError != null
                        ? ColorRes.errorColor
                        : Colors.grey.shade500),
              ),
              child: Row(
                children: [
                  Radio(
                    value: controller.male,
                    groupValue: controller.group,
                    onChanged: controller.maleRadioButtonCondition,
                  ),
                  const Text("Male"),
                  Radio(
                    value: controller.female,
                    groupValue: controller.group,
                    onChanged: controller.femaleRadioButtonCondition,
                  ),
                  const Text("Female"),
                  Radio(
                    value: controller.other,
                    groupValue: controller.group,
                    onChanged: controller.otherRadioButtonCondition,
                  ),
                  const Text("Other"),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            controller.genderError != null
                ? commonText(
                    data: controller.genderError ?? "",
                    color: ColorRes.errorColor,
                    fontSize: 12,
                  )
                : const SizedBox(),
          ],
        );
      });
}

Widget passTextFieldSignUp() {
  return GetBuilder<SignupScreenController>(
      id: 'LoginController',
      builder: (controller) {
        return textField(
          obscureText: controller.visiBal ? true : false,
          controller: controller.passwordController,
          hintText: StringRes.passTextFieldHintText,
          validator: controller.passwordCondition,
          prefixIcon: const Icon(Icons.lock),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
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
      width: Get.width * 0.802,
      height: Get.height * 0.06,
      child: commonElevatedButton(
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(height * 0.25))),
        onPressed: () => controller.signUpButton(),
        widget: commonText(
          data: StringRes.signupButtonText,
          fontFamily: StringRes.josefinSans,
          color: ColorRes.whiteColor,
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
