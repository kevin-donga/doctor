import 'dart:ffi';

import 'package:doctor/common_widget/common_text.dart';
import 'package:doctor/screens/book_appoinment/book_appointment_controller.dart';
import 'package:doctor/utils/color_res.dart';
import 'package:doctor/utils/icon_res.dart';
import 'package:doctor/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

Widget datePickerText() {
  return GetBuilder<BookAppointmentController>(builder: (controller) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: controller.backArrow,
              icon: const Icon(IconRes.backArrowIcon),
            ),
            commonText(
              data: StringRes.bookAppointmentText,
              color: ColorRes.blackColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: StringRes.josefinSans,
            ),
          ],
        ),
        SizedBox(
          height: Get.height * 0.03,
        ),
        Padding(
          padding: EdgeInsets.only(left: Get.width * 0.05),
          child: commonText(
            data: StringRes.selectDateText,
            color: ColorRes.blackColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontFamily: StringRes.josefinSans,
          ),
        ),
      ],
    );
  });
}

Widget datePicker() {
  return GetBuilder<BookAppointmentController>(
      id: 'DatePicker',
      builder: (controller) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SfDateRangePicker(
                onSelectionChanged: controller.onSelectionChanged,
                showNavigationArrow: true,
                backgroundColor: Colors.blue.withOpacity(0.1),
              ),
            ),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   mainAxisSize: MainAxisSize.min,
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: <Widget>[
            //     Text('Selected date: ${controller.selectedDate}'),
            //     Text('Selected date count: ${controller.dateCount}'),
            //     Text('Selected range: ${controller.range}'),
            //     Text('Selected ranges count: ${controller.rangeCount}')
            //   ],
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: commonText(
                data: StringRes.selectHourText,
                color: ColorRes.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: StringRes.josefinSans,
              ),
            ),
          ],
        );
      });
}

Widget timePicker() {
  return Expanded(
    child: GridView.builder(
      itemCount: 12,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 15.0,
        crossAxisSpacing: 20.0,
        childAspectRatio: 2.78,
        crossAxisCount: 3,
      ),
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.zero,
        child: Align(
          child: Container(
            height: Get.height*0.80,
            width: Get.width*0.90,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: ColorRes.blueColor,strokeAlign: BorderSide.strokeAlignOutside),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(child: commonText(data: '09.00 Am')),
          ),
        ),
      ),
    ),
  );
}
