import 'package:doctor/common_widget/common_text.dart';
import 'package:doctor/screens/profile_screen/profile_screen_controller.dart';
import 'package:doctor/utils/asset_res.dart';
import 'package:doctor/utils/color_res.dart';
import 'package:doctor/utils/icon_res.dart';
import 'package:doctor/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget customAppbar() {
  return Row(
    children: [
      Container(
        height: Get.height * 0.05,
        width: Get.width * 0.14,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.transparent,
          image: const DecorationImage(
            image: AssetImage(AssetRes.splashScreen1),
            fit: BoxFit.fill,
          ),
        ),
      ),
      SizedBox(
        width: Get.width * 0.1,
      ),
      commonText(
        data: StringRes.profileText,
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
  );
}

Widget profileImage() {
  return Column(
    children: [
      Container(
        height: Get.height * 0.15,
        width: Get.width * 0.35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: ColorRes.greyColor.shade300,
          image: const DecorationImage(
            image: AssetImage(AssetRes.doctorThumb2),
            fit: BoxFit.fill,
          ),
        ),
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
}

List<Map> profileList = [
  {'icon': IconRes.person1Icon, 'string': 'Edit Profile'},
  {'icon': IconRes.notificationIcon, 'string': 'Notification'},
  {'icon': IconRes.paymentIcon, 'string': 'Payment'},
  {'icon': IconRes.securityIcon, 'string': 'Security'},
  {'icon': IconRes.helpCenterIcon, 'string': 'Help Center'},
  {'icon': IconRes.inviteFriendIcon, 'string': 'Invite Friends'},
];

Widget listview() {
  return GetBuilder<ProfileController>(
    builder: (controller) {
      return Expanded(
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: profileList.length,
          itemBuilder: (context, index) => Row(
            children: [
              IconButton(
                onPressed: () {},
                icon:  Icon(
                  profileList[index]['icon'],
                  color: ColorRes.blackColor,
                  size: 30,
                ),
              ),
              SizedBox(width: Get.width*0.05,),
              InkWell(
                child: commonText(
                  data:profileList[index]['string'],
                  color: ColorRes.blackColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: StringRes.josefinSans,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon:  const Icon(
                  IconRes.arrowIcon,
                  color: ColorRes.blackColor,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      );
    }
  );
}

Widget logout(){
  return GetBuilder<ProfileController>(
    builder: (controller) {
      return InkWell(
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon:  const Icon(
                IconRes.logoutIcon,
                color: ColorRes.errorColor,
                size: 30,
              ),
            ),
            SizedBox(width: Get.width*0.05,),
            commonText(
              data:'Logout',
              color: ColorRes.errorColor,
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontFamily: StringRes.josefinSans,
            ),
          ],
        ),
      );
    }
  );
}