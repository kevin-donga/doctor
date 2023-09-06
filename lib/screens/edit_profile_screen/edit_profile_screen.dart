import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common_widget/common_appbar.dart';
import '../../utils/color_res.dart';
import '../../utils/icon_res.dart';
import '../../utils/string_res.dart';
import 'edit_profile_controller.dart';
import 'edit_profile_widget.dart';

class EditProfileScreen extends StatelessWidget {
   EditProfileScreen({Key? key}) : super(key: key);
   EditProfileController editProfileController=Get.put(EditProfileController());

  @override
  Widget build(BuildContext context) {
    Get.put(EditProfileController());
    return Scaffold(
      backgroundColor: ColorRes.scaffoldColor,
      appBar: commonAppbar(
        title: StringRes.editProfileAppbarTitle,
        leading: GetBuilder<EditProfileController>(builder: (controller) {
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
                  height: Get.height*0.02,
                ),
             //   usernameTextFiled(),
                nameTextFiled(),
                dateTextFiled(context),
                emailTextFiled(),
                mobileTextFieldSignUp(),
                radioButton(),
                SizedBox(height: Get.height*0.10,),
                editButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
