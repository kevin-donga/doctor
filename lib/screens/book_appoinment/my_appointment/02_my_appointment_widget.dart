import 'package:doctor/screens/forget_password/forget_password_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common_widget/common_elevated_button.dart';
import '../../../common_widget/common_text.dart';
import '../../../utils/asset_res.dart';
import '../../../utils/color_res.dart';
import '../../../utils/icon_res.dart';
import '../../../utils/string_res.dart';
import '02_my_appointment_controller.dart';

Widget myAppointmentAppbar() {
  return GetBuilder<MyAppointmentMessageController>(builder: (controller) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(IconRes.backArrowIcon),
            ),
            SizedBox(
              width: Get.width * 0.1,
            ),
            commonText(
              data: StringRes.myAppointmentText,
              color: ColorRes.blackColor,
              fontWeight: FontWeight.bold,
              fontSize: 25,
              fontFamily: StringRes.josefinSans,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                IconRes.moreHorizIcon,
                color: ColorRes.blackColor,
              ),
            ),
          ],
        ),
      ],
    );
  });
}

Widget containerWidget() {
  return Container(
    height: Get.height * 0.18,
    width: double.infinity,
    decoration: BoxDecoration(
      color: ColorRes.whiteColor.withOpacity(0.9),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: EdgeInsets.only(left: Get.width * 0.05),
      child: Row(
        children: [
          Container(
            height: Get.height * 0.12,
            width: Get.width * 0.25,
            decoration: BoxDecoration(
              color: ColorRes.greyColor.shade400,
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage(
                  AssetRes.doctorThumb2,
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: Get.height * 0.05, left: Get.height * 0.03),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                commonText(
                  data: StringRes.drText,
                  color: ColorRes.blueColor,
                  fontSize: 18,
                  fontFamily: StringRes.josefinSans,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Container(
                  height: Get.height * 0.0007,
                  width: Get.width * 0.55,
                  decoration: BoxDecoration(
                    color: ColorRes.greyColor.shade400,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                commonText(
                  data: StringRes.doctorDataText,
                  color: ColorRes.blackColor,
                  fontSize: 12,
                  fontFamily: StringRes.josefinSans,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                commonText(
                  data: StringRes.locationText,
                  color: ColorRes.blackColor,
                  fontSize: 12,
                  fontFamily: StringRes.josefinSans,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget introduction() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        commonText(
          data: StringRes.scheduledAppointmentText,
          color: ColorRes.blackColor,
          fontSize: 20,
          fontFamily: StringRes.josefinSans,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: Get.height * 0.02,
        ),
        commonText(
          data: StringRes.monthText,
          color: ColorRes.blackColor,
          fontSize: 13,
          fontFamily: StringRes.josefinSans,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: Get.height * 0.02,
        ),
        commonText(
          data: StringRes.timeText,
          color: ColorRes.blackColor,
          fontSize: 13,
          fontFamily: StringRes.josefinSans,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: Get.height * 0.02,
        ),
        commonText(
          data: StringRes.scheduledAppointmentText,
          color: ColorRes.blackColor,
          fontSize: 20,
          fontFamily: StringRes.josefinSans,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: Get.height * 0.01,
        ),
      ],
    ),
  );
}

Widget tableRow() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Table(
          columnWidths: {
            0: FixedColumnWidth(90),
            1: FixedColumnWidth(10),
          },
          children: [
            TableRow(
              children: [
                commonText(
                  data: StringRes.fullNameText,
                  fontSize: 14,
                  color: ColorRes.blackColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: StringRes.josefinSans,
                ),
                commonText(
                  data: ':',
                  color: ColorRes.blackColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: StringRes.josefinSans,
                ),
                commonText(
                  data: StringRes.drText,
                  fontSize: 14,
                  color: ColorRes.blackColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: StringRes.josefinSans,
                ),
              ],
            ),
            TableRow(
              children: [
                commonText(
                  height: 2,
                  data: StringRes.genderText,
                  fontSize: 14,
                  color: ColorRes.blackColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: StringRes.josefinSans,
                ),
                commonText(
                  height: 2,
                  data: ':',
                  color: ColorRes.blackColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: StringRes.josefinSans,
                ),
                commonText(
                  height: 2,
                  data: StringRes.maleText,
                  fontSize: 14,
                  color: ColorRes.blackColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: StringRes.josefinSans,
                ),
              ],
            ),
            TableRow(
              children: [
                commonText(
                  height: 2,
                  data: StringRes.ageText,
                  fontSize: 14,
                  color: ColorRes.blackColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: StringRes.josefinSans,
                ),
                commonText(
                  height: 2,
                  data: ':',
                  color: ColorRes.blackColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: StringRes.josefinSans,
                ),
                commonText(
                  height: 2,
                  data: StringRes.ageDisplayText,
                  fontSize: 14,
                  color: ColorRes.blackColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: StringRes.josefinSans,
                ),
              ],
            ),
            TableRow(
              children: [
                commonText(
                  height: 2,
                  data: StringRes.problemText,
                  fontSize: 14,
                  color: ColorRes.blackColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: StringRes.josefinSans,
                ),
                commonText(
                  height: 2,
                  data: ':',
                  color: ColorRes.blackColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: StringRes.josefinSans,
                ),
                commonText(
                  height: 2,
                  data: StringRes.problemDataText,
                  fontSize: 14,
                  color: ColorRes.blackColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: StringRes.josefinSans,
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}

Widget package() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        commonText(
          data: StringRes.packageText,
          fontSize: 20,
          color: ColorRes.blackColor,
          fontWeight: FontWeight.bold,
          fontFamily: StringRes.josefinSans,
        ),
        Container(
          height: Get.height * 0.15,
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorRes.whiteColor.withOpacity(0.09),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 27,
                    backgroundColor: ColorRes.blueColor.shade50,
                    child: const Icon(
                      IconRes.messageIcon,
                      color: ColorRes.blueColor,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: Get.height * 0.03,
                    left: Get.width * 0.05,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      commonText(
                        data: StringRes.messageText,
                        color: ColorRes.blackColor,
                        fontSize: 20,
                        fontFamily: StringRes.josefinSans,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      commonText(
                        data: StringRes.chatText,
                        color: ColorRes.greyColor,
                        fontSize: 12,
                        fontFamily: StringRes.josefinSans,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: Get.height * 0.03,
                    left: Get.width * 0.18,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      commonText(
                        data: StringRes.text,
                        color: ColorRes.blueColor,
                        fontSize: 20,
                        fontFamily: StringRes.josefinSans,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      commonText(
                        data: StringRes.paidText,
                        color: ColorRes.greyColor,
                        fontSize: 12,
                        fontFamily: StringRes.josefinSans,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget messageButton() {
  return GetBuilder<MyAppointmentMessageController>(builder: (controller) {
    return Padding(
      padding: EdgeInsets.only(
        left: width * 0.08,
        top: height * 0.02,
      ),
      child: commonElevatedButton(
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(height * 0.25))),
        onPressed: () => controller.messageButton(),
        widget: Padding(
          padding: EdgeInsets.only(
            left: width * 0.25,
            right: width * 0.25,
            top: height * 0.02,
            bottom: height * 0.02,
          ),
          child: FittedBox(
            child: commonText(data: StringRes.messageText),
          ),
        ),
      ),
    );
  });
}
