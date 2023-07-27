import 'package:doctor/common_widget/common_container.dart';
import 'package:doctor/common_widget/common_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/asset_res.dart';
import '../../utils/icon_res.dart';
import '../../utils/string_res.dart';

double h = Get.height;
double w = Get.width;

Widget onboardingContainer() {
  return Container(
    padding: const EdgeInsets.only(left: 20),
    // margin: EdgeInsets.all(10),
    height: 180,
    width: double.infinity,
    decoration: BoxDecoration(
        color: Colors.blue, borderRadius: BorderRadius.circular(w * 0.09)),
    child: Stack(
      children: [
        Positioned(
            right: 0,
            bottom: -5,
            child: Image.asset(
              AssetRes.doctorThumb1,
              height: 180,
            )),
        const Positioned(
          top: 15,
          child: Text(
            StringRes.onboardingContainerString,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: StringRes.josefinSans),
          ),
        ),
        const Positioned(
          top: 55,
          child: Text(
            StringRes.onboardingContainerSubString,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
                fontFamily: StringRes.josefinSans),
          ),
        ),
        Positioned(
          bottom: 10,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(Colors.white),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Check Now',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        )
      ],
    ),
  );
}

Widget doctorSpecialityRow() {
  return Row(
    children: [
      commonText(
          data: StringRes.doctorSpecialityRow,
          fontSize: 18,
          fontFamily: StringRes.josefinSans,
          fontWeight: FontWeight.bold),
      const Spacer(),
      commonText(
          data: StringRes.seeAllString,
          color: Colors.blue,
          fontSize: 18,
          fontFamily: StringRes.josefinSans,
          fontWeight: FontWeight.bold)
    ],
  );
}

List<Map> doctorSpecGridViewList = [
  {'icon': IconRes.peopleIcon, 'string': 'General..'},
  {'icon': IconRes.dentalIcon, 'string': 'Dentist'},
  {'icon': IconRes.ophthalIcon, 'string': 'Ophthal'},
  {'icon': IconRes.nutritionIcon, 'string': 'Nutrition..'},
  {'icon': IconRes.neuroloIcon, 'string': 'Neurolo..'},
  {'icon': IconRes.pediatricIcon, 'string': 'Pediatric'},
  {'icon': IconRes.radioloIcon, 'string': 'Radiolo..'},
  {'icon': IconRes.moreIcon, 'string': 'More'},
];

Widget doctorSpecGridView() {
  return GridView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 4,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
    ),
    itemCount: 8,
    itemBuilder: (context, index) => Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.blue.shade100,
          radius: 30,
          child: Image.asset(
            doctorSpecGridViewList[index]['icon'],
            height: 20,
            color: Colors.blueAccent,
          ),
        ),
        Text(doctorSpecGridViewList[index]['string'])
      ],
    ),
  );
}

Widget topDoctorRow() {
  return Row(
    children: [
      commonText(
          data: StringRes.topDoctor,
          fontSize: 18,
          fontFamily: StringRes.josefinSans,
          fontWeight: FontWeight.bold),
      const Spacer(),
      commonText(
          data: StringRes.seeAllString,
          color: Colors.blue,
          fontSize: 18,
          fontFamily: StringRes.josefinSans,
          fontWeight: FontWeight.bold),
    ],
  );
}

List topDoctorTab = ['All', 'General', 'Dentist', 'Nutrition'];

Widget topDoctorsTab() {
  // return GetBuilder<HomeScreenController>(
  //   builder: (controller) {
  return ListView.builder(
    shrinkWrap: true,
    // physics: const NeverScrollableScrollPhysics(),
    itemCount: topDoctorTab.length,
    scrollDirection: Axis.horizontal,
    itemBuilder: (BuildContext context, index) {
      return commonContainer(
        // height: 30,
        width: 90,
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(20),
          // color: Colors.red,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: commonText(data: topDoctorTab[index], color: Colors.blue),
        ),
      );
    },
  );
  //   },
  // );
}

Widget topDoctorsField() {
  return GridView.builder(
    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemCount: 10,
    itemBuilder: (context, index) {
      return Container(margin: const EdgeInsets.all(10),color: Colors.blue,);
    },
  );
}
