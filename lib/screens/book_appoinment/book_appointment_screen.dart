import 'package:doctor/screens/book_appoinment/book_appointment_controller.dart';
import 'package:doctor/screens/book_appoinment/book_appointment_widget.dart';
import 'package:doctor/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/color_res.dart';

import '../../common_widget/common_appbar.dart';
import '../../utils/asset_res.dart';
import '../../utils/icon_res.dart';

class BookAppointment extends StatelessWidget {
  const BookAppointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(BookAppointmentController());
    return Scaffold(
      appBar: commonAppbar(
        title: StringRes.bookAppointmentText,
        leading: GetBuilder<BookAppointmentController>(
          builder: (controller) {
            return IconButton(
              icon: const Icon(IconRes.backArrowIcon),
              onPressed:controller.backArrow,
              color: ColorRes.blackColor,
            );
          }
        ),
      ),
      backgroundColor: ColorRes.scaffoldColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.02,
              ),
              datePickerText(),
              datePicker(),
              timePicker(),
              bookAppointmentButton(),
            ],
          ),
        ),
      ),
    );
  }
}
