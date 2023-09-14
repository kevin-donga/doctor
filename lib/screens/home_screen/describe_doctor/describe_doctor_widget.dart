import 'package:doctor/common_widget/common_text.dart';
import 'package:doctor/screens/home_screen/describe_doctor/describe_doctor_controller.dart';
import 'package:doctor/screens/home_screen/home_screen_controller.dart';
import 'package:doctor/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common_widget/common_container.dart';
import '../../../utils/color_res.dart';
import '../../../utils/icon_res.dart';

double h = Get.height;
double w = Get.width;

PreferredSizeWidget appBarWithDoctorName() {
  return AppBar(
    foregroundColor: Colors.black,
    backgroundColor: ColorRes.scaffoldColor,
    title: GetBuilder<DescribedDoctorController>(
      id: "Doctor",
      builder: (controller) => commonText(
      data: controller
          .doctorData?['name']??"",
      fontSize: 18,
      fontWeight: FontWeight.w900,
      fontFamily: StringRes.josefinSans,
    ),)
  );
}

Widget doctorIntroCard() {
  return Card(
    elevation: h * 0.03,
    shadowColor: Colors.blue.withOpacity(0.5),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    color: Colors.white.withOpacity(0.9),
    child: GetBuilder<DescribedDoctorController>(
      id: "Doctor",
      builder: (controller) => controller.isLod?const Center(
        child: CircularProgressIndicator(),
      ) : Row(
      children: [
        Column(
          children: [
            commonContainer(
              margin: const EdgeInsets.all(15),
              height: h * 0.15,
              width: w * 0.30,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      controller
                          .doctorData!['image'],
                    ),
                    fit: BoxFit.cover),
                // color: Colors.orange,
                borderRadius: BorderRadius.circular(20),
              ),
            )
          ],
        ),
        Column(
          children: [
            commonText(
              data: controller
                  .doctorData!['name'],
              fontSize: 15,
              fontWeight: FontWeight.w900,
              fontFamily: StringRes.josefinSansBold,
            ),
            const Divider(
              color: Colors.red,
              thickness: 4,
              height: 5,
            ),
            commonText(
              data: controller
                  .doctorData!['qualification'],
              fontSize: 13,
              fontWeight: FontWeight.w900,
              fontFamily: StringRes.josefinSans,
            ),
            SizedBox(
              height: h * 0.002,
            ),
            commonText(
              data: controller
                  .doctorData!['hospital'],
              fontSize: 12,
              fontWeight: FontWeight.w900,
              fontFamily: StringRes.josefinSans,
            )
          ],
        )
      ],
    ),)
  );
}

Widget doctorSpeciality() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: GetBuilder<DescribedDoctorController>(
      id: "Doctor",
      builder: (controller) =>controller.isLod?const Center(
        child: CircularProgressIndicator(),
      ) : Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // infoDoctorCircleAvtar(
        //   image: const AssetImage(
        //     IconRes.doctorInfoPatientIcon,
        //   ),
        //   data: _homeScreenController
        //       .doctorList[_homeScreenController.selectedIndex]['patient'],
        //   title: 'patients',
        // ),
        infoDoctorCircleAvtar(
          image: const AssetImage(
            IconRes.doctorInfoExpertIcon,
          ),
          data: controller
              .doctorData!['experience'],
          title: 'Years of experience',
        ),
        // infoDoctorCircleAvtar(
        //   image: const AssetImage(
        //     IconRes.doctorInfoRatingIcon,
        //   ),
        //   data: _homeScreenController
        //       .doctorList[_homeScreenController.selectedIndex]['rating'],
        //   title: 'rating',
        // ),
        // infoDoctorCircleAvtar(
        //   image: const AssetImage(
        //     IconRes.doctorInfoMessageIcon,
        //   ),
        //   data: _homeScreenController
        //       .doctorList[_homeScreenController.selectedIndex]['reviews'],
        //   title: 'reviews',
        // ),
      ],
    ),),
  );
}

Widget aboutDoctor() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      commonText(
        data: 'About me',
        fontSize: 18,
        // fontWeight: FontWeight.w900,
        fontFamily: StringRes.josefinSansBold,
      ),
      SizedBox(
        height: h * 0.02,
      ),
      GetBuilder<DescribedDoctorController>(
        id: "Doctor",
        builder: (controller) => commonText(
        data: controller
            .doctorData?['about']??"",
        fontFamily: StringRes.josefinSans,
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),)
    ],
  );
}

Widget workingTime() {
  return Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          commonText(
            data: 'Working Time',
            fontSize: 18,
            // fontWeight: FontWeight.w900,
            fontFamily: StringRes.josefinSansBold,
          ),
          SizedBox(
            height: h * 0.02,
          ),
          GetBuilder<DescribedDoctorController>(
              id: "Doctor",
              builder: (controller) => commonText(
            data:  controller
                .doctorData?['worktime']??"",
            fontFamily: StringRes.josefinSans,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),)
        ],
      ),
    ],
  );
}

Widget infoDoctorCircleAvtar({required ImageProvider image,
  required String data,
  required String title}) {
  return SizedBox(
    // color: Colors.white70,
    // height: h * 0.2,
    width: w * 0.2,
    child: Column(
      children: [
        CircleAvatar(
          radius: h * 0.04,
          backgroundColor: Colors.blue.shade100,
          child: Image(
            image: image,
            height: Get.height * 0.04,
            color: Colors.blue,
          ),
        ),
        SizedBox(
          height: h * 0.02,
        ),
        commonText(
            data: data,
            fontSize: 15,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontFamily: StringRes.josefinSans),
        SizedBox(
          height: h * 0.002,
        ),
        commonText(
            data: title,
            overflow: TextOverflow.ellipsis,
            fontSize: 13,
            // color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontFamily: StringRes.josefinSans),
      ],
    ),
  );
}

Widget bookAppointmentBTN() {
  return GetBuilder<DescribedDoctorController>(builder: (controller) {
    return SizedBox(
      height: h * 0.07,
      width: w,
      child: ElevatedButton(
        onPressed: () => controller.onBookAppointment(),
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(h * 0.035),
            ),
          ),
        ),
        child: commonText(data: 'Book Appointment'),
      ),
    );
  });
}
