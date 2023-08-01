import 'package:doctor/screens/OTP_verification_screen/verification_screen_controller.dart';
import 'package:doctor/screens/forget_password/forget_password_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../../common_widget/common_elevated_button.dart';
import '../../common_widget/common_text.dart';
import '../../utils/asset_res.dart';
import '../../utils/color_res.dart';
import '../../utils/icon_res.dart';
import '../../utils/string_res.dart';

Widget verificationContainer() {
  return GetBuilder<VerificationController>(
      builder: (controller) {
        return Row(
          children: [
            IconButton(
              onPressed:()=>controller.verificationIconButton(),
              icon: const Icon(
                IconRes.backArrowIcon,
                color: ColorRes.blackColor,
              ),
            ),
            commonText(
                data: StringRes.verificationText,
                color: ColorRes.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ],
        );
      }
  );
}

Widget topImage() {
  return Image.asset(
    AssetRes.forgotScreen,
    height: Get.height * 0.30,
  );
}

Widget pinPutWidget(){
  return GetBuilder<VerificationController>(
    builder: (controller) {
      return Pinput(
        controller: controller.otpController,
        length: 6,
        showCursor: true,
        onChanged: (value) => controller.pinPutOnChanged(value),
        defaultPinTheme: PinTheme(
            height: Get.width * 0.12,
            width: Get.width * 0.12,
            decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(Get.width * 0.01),
              //color: Colors.black26,
                border: Border(bottom: BorderSide(color: ColorRes.blueColor,width: Get.width * 0.007))
            ),
            textStyle: const TextStyle(fontWeight: FontWeight.bold)),
      );
    }
  );
}

Widget verifyButton() {
  return GetBuilder<VerificationController>(builder: (controller) {
    return commonElevatedButton(
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(height * 0.25))),
      onPressed:()=>controller.verificationIconButton(),
      widget: Padding(
        padding: EdgeInsets.only(
          left: width * 0.32,
          right: width * 0.30,
          top: height * 0.02,
          bottom: height * 0.02,
        ),
        child: commonText(data: StringRes.verifyText),
      ),
    );
  });
}
