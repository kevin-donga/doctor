import 'package:doctor/screens/home_screen/describe_doctor/describe_doctor_controller.dart';
import 'package:doctor/screens/home_screen/home_screen_controller.dart';
import 'package:doctor/utils/asset_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common_widget/common_container.dart';
import '../../../common_widget/common_text.dart';
import '../../../utils/color_res.dart';
import '../../../utils/icon_res.dart';
import '../../../utils/string_res.dart';
import 'describe_doctor_widget.dart';

class DescribedDoctor extends StatelessWidget {
  DescribedDoctor({Key? key}) : super(key: key);
  final HomeScreenController _homeScreenController =
      Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    double h = Get.height;
    double w = Get.width;
    Get.put(DescribedDoctorController());
    return Scaffold(
      backgroundColor: ColorRes.scaffoldColor,
      appBar: appBarWithDoctorName(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              doctorIntroCard(),
              doctorSpeciality(),
              aboutDoctor(),
              SizedBox(
                height: h * 0.04,
              ),
              workingTime(),
              Divider(thickness: 2, height: h * 0.08),
              bookAppointmentBTN(),
            ],
          ),
        ),
      ),
    );
  }
}
