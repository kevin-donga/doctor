import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../common_widget/common_text.dart';
import '../../utils/asset_res.dart';
import '../../utils/color_res.dart';
import '../../utils/icon_res.dart';
import '../../utils/string_res.dart';
import 'history_screen_controller.dart';

Widget historyAppbar() {
  return GetBuilder<HistoryScreenController>(builder: (controller) {
    return Column(
      children: [
        Container(
          height: Get.height * 0.12,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
          child: Column(
            children: [
              Row(
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
                    width: Get.width * 0.020,
                  ),
                  commonText(
                    data: StringRes.historyText,
                    color: ColorRes.blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontFamily: StringRes.josefinSans,
                  ),
                  const Spacer(),
                  InkWell(
                    child: Icon(
                      IconRes.searchIcon,
                      color: ColorRes.blackColor,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      IconRes.moreHorizIcon,
                      color: ColorRes.blackColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              TabBar(
                unselectedLabelColor: ColorRes.greyColor,
                controller: controller.tabController,
                tabs: controller.data,
                labelColor: ColorRes.blueColor,
                labelPadding: const EdgeInsets.all(6),
              ),
            ],
          ),
        ),
      ],
    );
  });
}


Widget historyListview() {
  return GetBuilder<HistoryScreenController>(builder: (controller) {
    return SizedBox(
      width: double.infinity,
      height: Get.height*0.810,
      child: TabBarView(
          controller: controller.tabController,
        children: [
          ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 8,
            itemBuilder: (context, index) => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: Get.height * 0.09,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorRes.whiteColor.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: Get.width * 0.02),
                      child: Row(
                        children: [
                          Container(
                            height: Get.height * 0.06,
                            width: Get.width * 0.13,
                            decoration: BoxDecoration(
                              color: ColorRes.greyColor.shade400,
                              borderRadius: BorderRadius.circular(40),
                              image: const DecorationImage(
                                image: AssetImage(
                                  AssetRes.doctorThumb3,
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: Get.height * 0.03,
                                left: Get.height * 0.03),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                commonText(
                                  data: StringRes.drText,
                                  color: ColorRes.blackColor,
                                  fontSize: 14,
                                  fontFamily: StringRes.josefinSansBold,
                                ),
                                SizedBox(
                                  height: Get.height * 0.01,
                                ),
                                commonText(
                                  data: StringRes.descriptionText,
                                  color: ColorRes.blackColor,
                                  fontSize: 11,
                                  fontFamily: StringRes.josefinSans,
                                  fontWeight: FontWeight.bold,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: Get.height * 0.03,
                              left: Get.height * 0.070,
                            ),
                            child: Column(
                              children: [
                                commonText(
                                  data: StringRes.dayText,
                                  color: ColorRes.blackColor,
                                  fontSize: 11,
                                  fontFamily: StringRes.josefinSans,
                                  fontWeight: FontWeight.bold,
                                ),
                                SizedBox(
                                  height: Get.height * 0.008,
                                ),
                                commonText(
                                  data: StringRes.historyOfTimeText,
                                  color: ColorRes.blackColor,
                                  fontSize: 11,
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
                ),
              ],
            ),
          ),
          ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: StringRes.doctorDataList.length,
            itemBuilder: (context, index) => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                                      data: StringRes.doctorDataList[index]['message'],
                                      color: ColorRes.blackColor,
                                      fontSize: 12,
                                      fontFamily: StringRes.josefinSans,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    SizedBox(width: Get.width*0.22,),
                                    InkWell(
                                      onTap: (){},
                                      child: CircleAvatar(
                                        radius: 26,
                                        backgroundColor:   ColorRes.blueColor.shade50,
                                        child: const CircleAvatar(
                                          radius: 12,
                                          child:  Center(
                                            child: Icon(
                                              IconRes.arrowIcon,
                                              color: ColorRes.whiteColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    commonText(
                                      data: StringRes.doctorDataList[index]['Date'],
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
              ],
            ),
          ),
          ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: StringRes.doctorDataList.length,
            itemBuilder: (context, index) => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                                      data: StringRes.doctorDataList[index]['message'],
                                      color: ColorRes.blackColor,
                                      fontSize: 12,
                                      fontFamily: StringRes.josefinSans,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    SizedBox(width: Get.width*0.22,),
                                    InkWell(
                                      onTap: (){},
                                      child: CircleAvatar(
                                        radius: 26,
                                        backgroundColor:   ColorRes.blueColor.shade50,
                                        child: const CircleAvatar(
                                          radius: 12,
                                          child:  Center(
                                            child: Icon(
                                              IconRes.arrowIcon,
                                              color: ColorRes.whiteColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    commonText(
                                      data: StringRes.doctorDataList[index]['Date'],
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
              ],
            ),
          ),
        ],
      ),
    );
  });
}
