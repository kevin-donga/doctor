import 'package:doctor/screens/edit_profile_screen/edit_profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common_widget/common_appbar.dart';
import '../../utils/color_res.dart';
import '../../utils/icon_res.dart';
import '../../utils/string_res.dart';
import 'edit_profile_controller.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(
        title: StringRes.myAppointmentText,
        leading: GetBuilder<EditProfileController>(
            builder: (controller) {
              return IconButton(
                icon:  const Icon(IconRes.backArrowIcon),
                onPressed: controller.backArrow,
                color: ColorRes.blackColor,
              );
            }
        ),
      ),
      body: Column(
        children: [
          textFiledWidget(),
        ],
      ),
    );
  }
}
