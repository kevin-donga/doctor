import 'package:doctor/common_widget/common_container.dart';
import 'package:doctor/utils/asset_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import '../../../common_widget/common_text.dart';
import '../../../utils/color_res.dart';
import '../../../utils/icon_res.dart';
import '../../../utils/string_res.dart';
import '../../../utils/string_res.dart';
import '../../../utils/string_res.dart';
import '01_my_appointment_controller.dart';

//
// Widget appointmentAppbar() {
//   return GetBuilder<MyAppointmentController>(
//     builder: (controller) {
//       return Column(
//         children: [
//           Row(
//             children: [
//               Container(
//                 height: Get.height * 0.05,
//                 width: Get.width * 0.14,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(40),
//                   color: Colors.transparent,
//                   image: const DecorationImage(
//                     image: AssetImage(AssetRes.splashScreen1),
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 width: Get.width * 0.1,
//               ),
//               commonText(
//                 data: StringRes.profileText,
//                 color: ColorRes.blackColor,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 25,
//                 fontFamily: StringRes.josefinSans,
//               ),
//               const Spacer(),
//               IconButton(
//                 onPressed: () {},
//                 icon: const Icon(
//                   IconRes.moreHorizIcon,
//                   color: ColorRes.blackColor,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       );
//     }
//   );
// }

Widget listview() {
  return GetBuilder<MyAppointmentController>(builder: (controller) {
    return Expanded(
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: StringRes.doctorDataList.length,
        itemBuilder: (context, index) => Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: controller.containerOnTap,
                child: Container(
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
                                data: StringRes.doctorDataList[index]['Name'],
                                color: ColorRes.blueColor,
                                fontSize: 18,
                                fontFamily: StringRes.josefinSans,
                                fontWeight: FontWeight.bold,
                              ),
                              Row(
                                children: [
                                  commonText(
                                    data: StringRes.doctorDataList[index]
                                        ['message'],
                                    color: ColorRes.blackColor,
                                    fontSize: 12,
                                    fontFamily: StringRes.josefinSans,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: Get.height * 0.03,
                                        width: Get.width * 0.20,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                                color: ColorRes.errorColor)),
                                        child: Center(
                                          child: commonText(
                                            data: StringRes.cancelText,
                                            color: ColorRes.errorColor,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: CircleAvatar(
                                      radius: 25,
                                      backgroundColor:
                                          ColorRes.blueColor.shade50,
                                      child: const Icon(
                                        IconRes.phoneIcon,
                                        color: ColorRes.blueColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  commonText(
                                    data: StringRes.doctorDataList[index]
                                        ['Date'],
                                    color: ColorRes.blackColor,
                                    fontSize: 12,
                                    fontFamily: StringRes.josefinSans,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  });
}

Widget appointmentListview() {
  return GetBuilder<MyAppointmentController>(
      id: 'tab',
      builder: (controller) {
        return SizedBox(
          width: double.infinity,
          height: Get.height * 0.840,
          child: TabBarView(
            controller: controller.tabController,
            children: [
              commonContainer(
                height: double.infinity,
                width: double.infinity,
                child: controller.appointmentList == []
                    ? Column(
                        children: [
                          Image.asset(AssetRes.upcomingAppointment),
                          commonText(
                            data: StringRes.upcomingAppointmentText,
                            color: ColorRes.blackColor,
                            fontSize: 18,
                            fontFamily: StringRes.josefinSans,
                            fontWeight: FontWeight.bold,
                          ),
                          commonText(
                            data: StringRes.upcomingAppText,
                            color: ColorRes.blackColor,
                            fontSize: 12,
                            fontFamily: StringRes.josefinSans,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      )
                    : ListView.builder(
                        itemCount: controller.appointmentList.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: Get.height * 0.18,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: ColorRes.whiteColor.withOpacity(0.9),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: Get.height * 0.02,
                                      left: Get.height * 0.03),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          commonText(
                                            data: StringRes.problemText,
                                            color: ColorRes.blackColor,
                                            fontSize: 15,
                                            fontFamily: StringRes.josefinSans,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          commonText(
                                            data: ':',
                                            color: ColorRes.blackColor,
                                            fontSize: 18,
                                            fontFamily: StringRes.josefinSans,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          commonText(
                                            data: controller
                                                    .appointmentList[index]
                                                ['problem'],
                                            color: ColorRes.blackColor,
                                            fontSize: 15,
                                            fontFamily: StringRes.josefinSans,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          commonText(
                                            data: StringRes.time1Text,
                                            color: ColorRes.blackColor,
                                            fontSize: 15,
                                            fontFamily: StringRes.josefinSans,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          commonText(
                                            data: ':',
                                            color: ColorRes.blackColor,
                                            fontSize: 18,
                                            fontFamily: StringRes.josefinSans,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          commonText(
                                            data: controller
                                                .appointmentList[index]['time'],
                                            color: ColorRes.blackColor,
                                            fontSize: 15,
                                            fontFamily: StringRes.josefinSans,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          commonText(
                                            data:
                                                StringRes.dateTextFieldHintText,
                                            color: ColorRes.blackColor,
                                            fontSize: 15,
                                            fontFamily: StringRes.josefinSans,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          commonText(
                                            data: ':',
                                            color: ColorRes.blackColor,
                                            fontSize: 18,
                                            fontFamily: StringRes.josefinSans,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          commonText(
                                            data: controller
                                                .appointmentList[index]['date'],
                                            color: ColorRes.blackColor,
                                            fontSize: 15,
                                            fontFamily: StringRes.josefinSans,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          commonText(
                                            data: StringRes.statesText,
                                            color: ColorRes.blackColor,
                                            fontSize: 15,
                                            fontFamily: StringRes.josefinSans,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          commonText(
                                            data: ':',
                                            color: ColorRes.blackColor,
                                            fontSize: 18,
                                            fontFamily: StringRes.josefinSans,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          commonText(
                                            data: controller
                                                    .appointmentList[index]
                                                ['states'],
                                            color: ColorRes.blackColor,
                                            fontSize: 15,
                                            fontFamily: StringRes.josefinSans,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
              ),
              ListView.builder(
                shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                itemCount: controller.doctorsList.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: controller.containerOnTap,
                        child: Container(
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
                                    image: DecorationImage(
                                      image: AssetImage(
                                        controller.doctorsList[index]['photo'],
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: Get.height * 0.04,
                                      left: Get.height * 0.03),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      commonText(
                                        data: controller.doctorsList[index]
                                            ['name'],
                                        color: ColorRes.blueColor,
                                        fontSize: 18,
                                        fontFamily: StringRes.josefinSans,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      Row(
                                        children: [
                                          commonText(
                                            data: controller.doctorsList[index]
                                                ['message'],
                                            color: ColorRes.blackColor,
                                            fontSize: 12,
                                            fontFamily: StringRes.josefinSans,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                height: Get.height * 0.03,
                                                width: Get.width * 0.20,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                      color:
                                                          ColorRes.greenColor),
                                                ),
                                                child: Center(
                                                  child: commonText(
                                                    data: StringRes.acceptText,
                                                    color: ColorRes.greenColor,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: CircleAvatar(
                                              radius: 20,
                                              backgroundColor:
                                                  ColorRes.blueColor.shade50,
                                              child: Icon(
                                                controller.doctorsList[index]
                                                    ['icon'],
                                                color: ColorRes.blueColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          commonText(
                                            data: controller.doctorsList[index]
                                                ['Date'],
                                            color: ColorRes.blackColor,
                                            fontSize: 12,
                                            fontFamily: StringRes.josefinSans,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                // physics: const NeverScrollableScrollPhysics(),
                itemCount: controller.doctorsList.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: controller.containerOnTap,
                        child: Container(
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
                                    image: DecorationImage(
                                      image: AssetImage(
                                        controller.doctorsList[index]['photo'],
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: Get.height * 0.05,
                                      left: Get.height * 0.03),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      commonText(
                                        data: controller.doctorsList[index]
                                            ['name'],
                                        color: ColorRes.blueColor,
                                        fontSize: 18,
                                        fontFamily: StringRes.josefinSans,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      Row(
                                        children: [
                                          commonText(
                                            data: controller.doctorsList[index]
                                                ['message'],
                                            color: ColorRes.blackColor,
                                            fontSize: 12,
                                            fontFamily: StringRes.josefinSans,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                height: Get.height * 0.03,
                                                width: Get.width * 0.20,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                        color: ColorRes
                                                            .errorColor)),
                                                child: Center(
                                                  child: commonText(
                                                    data: StringRes.cancelText,
                                                    color: ColorRes.errorColor,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: CircleAvatar(
                                              radius: 20,
                                              backgroundColor:
                                                  ColorRes.blueColor.shade50,
                                              child: Icon(
                                                controller.doctorsList[index]
                                                    ['icon'],
                                                color: ColorRes.blueColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          commonText(
                                            data: controller.doctorsList[index]
                                                ['Date'],
                                            color: ColorRes.blackColor,
                                            fontSize: 12,
                                            fontFamily: StringRes.josefinSans,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      });
}
