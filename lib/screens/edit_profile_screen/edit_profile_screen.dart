import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common_widget/common_appbar.dart';
import '../../utils/color_res.dart';
import '../../utils/icon_res.dart';
import '../../utils/string_res.dart';
import 'edit_profile_controller.dart';
import 'edit_profile_widget.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
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
          child: Column(
            children: [
              SizedBox(
                height: Get.height*0.02,
              ),
              usernameTextFiled(),
              nameTextFiled(),
              dateTextFiled(context),
              emailTextFiled(),
              countryTextFiled(),
              dropDownButton(),
              SizedBox(height: Get.height*0.13,),
              editButton(),
            ],
          ),
        ),
      ),
    );
  }
}
