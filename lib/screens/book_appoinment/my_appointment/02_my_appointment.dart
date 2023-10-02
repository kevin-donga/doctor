import 'package:doctor/common_widget/common_appbar.dart';
import 'package:doctor/screens/book_appoinment/book_appointment_controller.dart';
import 'package:doctor/screens/book_appoinment/my_appointment/02_my_appointment_widget.dart';
import 'package:doctor/utils/color_res.dart';
import 'package:doctor/utils/icon_res.dart';
import 'package:doctor/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAppointmentMessage extends StatelessWidget {
  const MyAppointmentMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.scaffoldColor,
      appBar: commonAppbar(
        backgroundColor: ColorRes.scaffoldColor,
        title: StringRes.myAppointmentText,
        leading: GetBuilder<BookAppointmentController>(builder: (controller) {
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
