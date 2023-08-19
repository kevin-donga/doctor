import 'package:doctor/screens/book_appoinment/my_appointment/02_my_appointment_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common_widget/common_appbar.dart';
import '../../../utils/color_res.dart';
import '../../../utils/icon_res.dart';
import '../../../utils/string_res.dart';
import '02_my_appointment_widget.dart';

class MyAppointmentMessage extends StatelessWidget {
  const MyAppointmentMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MyAppointmentMessageController());
    return Scaffold(
      appBar: commonAppbar(
        title: StringRes.myAppointmentText,
        leading: GetBuilder<MyAppointmentMessageController>(
          builder: (controller) {
            return IconButton(
              icon:  const Icon(IconRes.backArrowIcon),
              onPressed: controller.backArrow,
              color: ColorRes.blackColor,
            );
          }
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              containerWidget(),
              SizedBox(
                height: Get.height * 0.02,
              ),
              introduction(),
              tableRow(),
              package(),
              messageButton(),
            ],
          ),
        ),
      ),
    );
  }
}
