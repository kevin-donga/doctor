import 'package:doctor/common_widget/common_text.dart';
import 'package:doctor/screens/book_appoinment/book_appointment_controller.dart';
import 'package:doctor/screens/forget_password/forget_password_widget.dart';
import 'package:doctor/utils/color_res.dart';
import 'package:doctor/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../common_widget/common_elevated_button.dart';
import '../../common_widget/common_textfield.dart';

double h = Get.height;
double w = Get.width;

Widget textFieldDate() {
  return GetBuilder<BookAppointmentController>(
    id: "NameTextFiled",
    builder: (controller) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: textField(
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(2),
          // ),
          fillColor: Colors.blueGrey.shade50,
          keyboardType: TextInputType.multiline,
          filled: true,
          minLines: 7,
          maxLines: 7,
          controller: controller.problem,
          hintText: StringRes.problem1Text,
          obscureText: false,
        ),
      );
    },
  );
}

Widget datePickerText() {
  return GetBuilder<BookAppointmentController>(builder: (controller) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.only(left: Get.width * 0.05, top: Get.height * 0.01),
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
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(
      height: Get.height * 0.250,
      child: GetBuilder<BookAppointmentController>(
          id: 'container',
          builder: (controller) {
            return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: controller.bookAppointmentList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 15.0,
                crossAxisSpacing: 20.0,
                childAspectRatio: 2.78,
                crossAxisCount: 3,
              ),
              itemBuilder: (BuildContext context, int index) => Align(
                child: InkWell(
                  onTap: () {
                    controller.selectedIndex = index;
                  },
                  child: Container(
                    height: Get.height * 0.80,
                    width: Get.width * 0.90,
                    decoration: BoxDecoration(
                      color: controller.selectedIndex == index
                          ? ColorRes.blueColor
                          : ColorRes.whiteColor,
                      border: Border.all(
                          color: ColorRes.blueColor,
                          strokeAlign: BorderSide.strokeAlignOutside),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: commonText(
                            data: controller.bookAppointmentList[index])),
                  ),
                ),
              ),
            );
          }),
    ),
  );
}

Widget bookAppointmentButton() {
  return GetBuilder<BookAppointmentController>(builder: (controller) {
    return commonElevatedButton(
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(height * 0.25))),
      onPressed: () => controller.bookAppointment(),
      widget: Padding(
        padding: EdgeInsets.only(
          left: width * 0.22,
          right: width * 0.20,
          top: height * 0.02,
          bottom: height * 0.02,
        ),
        child: commonText(
          data: 'Book Appointment', fontSize: 14,
          // data: StringRes.nextText,
        ),
      ),
    );
  });
}
