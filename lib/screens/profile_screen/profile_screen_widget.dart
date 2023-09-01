import 'package:doctor/common_widget/common_text.dart';
import 'package:doctor/screens/profile_screen/profile_screen_controller.dart';
import 'package:doctor/utils/asset_res.dart';
import 'package:doctor/utils/color_res.dart';
import 'package:doctor/utils/icon_res.dart';
import 'package:doctor/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget profileImage() {
  return GetBuilder<ProfileController>(
      id: 'imagePicker',
      builder: (controller) {
        return Column(
          children: [
            Stack(
              children: [
                InkWell(
                 //  onTap: controller.imagePickerWidget,
                  child: Container(
                    height: Get.height * 0.16,
                    width: Get.width * 0.35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: ColorRes.greyColor.shade300,
                      image: DecorationImage(
                        image: controller.file == null
                            ? const AssetImage(AssetRes.doctorThumb3)
                            : FileImage(controller.file!) as ImageProvider,
                        fit: BoxFit.fill,
                      ),
                      border:
                          Border.all(color: ColorRes.blueColor.withOpacity(0.1)),
                    ),
                  ),
                ),
                Positioned(
                  top: Get.height * 0.11,
                  left: Get.width * 0.26,
                  child: GetBuilder<ProfileController>(
                      id: 'imagePicker',
                      builder: (controller) {
                        return InkWell(
                         onTap:controller.imagePickerWidget,
                          child: CircleAvatar(
                            backgroundColor: ColorRes.blueColor,
                            radius: Get.height * 0.02,
                            child: const Icon(
                              IconRes.addIcon,
                              color: ColorRes.whiteColor,
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            commonText(
              data: StringRes.andrewAinsleyText,
              color: ColorRes.blackColor,
              fontWeight: FontWeight.bold,
              fontSize: 25,
              fontFamily: StringRes.josefinSans,
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            commonText(
              data: "+ 1 111 123 145 658",
              color: ColorRes.blackColor,
              fontWeight: FontWeight.bold,
              fontSize: 13,
              fontFamily: StringRes.josefinSans,
            ),
          ],
        );
      });
}

Widget listview() {
  return GetBuilder<ProfileController>(builder: (controller) {
    return Expanded(
      child: GetBuilder<ProfileController>(
          id: 'Listview',
          builder: (controller) {
            return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: StringRes.profileList.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () => controller.listviewCondition(index),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        StringRes.profileList[index]['icon'],
                        color: ColorRes.blackColor,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: Get.width * 0.05,
                    ),
                    InkWell(
                      child: commonText(
                        data: StringRes.profileList[index]['string'],
                        color: ColorRes.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: StringRes.josefinSans,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        IconRes.arrowIcon,
                        color: ColorRes.blackColor,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  });
}

Widget logout(BuildContext context) {
  return GetBuilder<ProfileController>(builder: (controller) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: commonText(
              data: 'Logout Out',
              color: ColorRes.blackColor,
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontFamily: StringRes.josefinSans,
            ),
            content: commonText(
              data: 'You have been successfully Logout out.',
              color: ColorRes.blackColor,
              fontWeight: FontWeight.bold,
              fontSize: 13,
              fontFamily: StringRes.josefinSans,
            ),
            actions: [
              SizedBox(
                width: Get.width * 0.03,
              ),
              commonText(
                data: 'Cancel',
                color: ColorRes.blueColor,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontFamily: StringRes.josefinSans,
              ),
              SizedBox(
                width: Get.width * 0.03,
              ),
              commonText(
                data: 'Ok',
                color: ColorRes.blueColor,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontFamily: StringRes.josefinSans,
              )
            ],
          ),
        );
      },
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              IconRes.logoutIcon,
              color: ColorRes.errorColor,
              size: 30,
            ),
          ),
          SizedBox(
            width: Get.width * 0.05,
          ),
          commonText(
            data: 'Logout',
            color: ColorRes.errorColor,
            fontWeight: FontWeight.bold,
            fontSize: 18,
            fontFamily: StringRes.josefinSans,
          ),
        ],
      ),
    );
  });
}
