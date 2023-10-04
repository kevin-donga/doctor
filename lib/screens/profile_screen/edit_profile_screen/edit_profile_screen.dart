import 'package:doctor/common_widget/common_appbar.dart';
import 'package:doctor/utils/color_res.dart';
import 'package:doctor/utils/icon_res.dart';
import 'package:doctor/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../profile_screen_controller.dart';
import 'edit_profile_widget.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key}) : super(key: key);
  ProfileController editProfileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    // Get.put(EditProfileController());
    return Scaffold(
      backgroundColor: ColorRes.scaffoldColor,
      appBar: commonAppbar(
        backgroundColor: ColorRes.scaffoldColor,
        title: StringRes.editProfileAppbarTitle,
        leading: GetBuilder<ProfileController>(builder: (controller) {
          return IconButton(
            icon: const Icon(IconRes.backArrowIcon),
            onPressed: controller.backArrow,
            color: ColorRes.blackColor,
          );
        }),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            key: editProfileController.formKey,
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.02,
                ),
                //   usernameTextFiled(),
                nameTextFiled(),
                dateTextFiled(context),
                emailTextFiled(),
                mobileTextFieldSignUp(),
                radioButton(),
                SizedBox(
                  height: Get.height * 0.10,
                ),
                editButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
