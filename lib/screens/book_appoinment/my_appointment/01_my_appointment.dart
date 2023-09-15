import 'package:doctor/screens/book_appoinment/my_appointment/01_my_appointment_controller.dart';
import 'package:doctor/screens/book_appoinment/my_appointment/01_my_appointment_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/color_res.dart';

import '../../../common_widget/common_appbar.dart';
import '../../../utils/asset_res.dart';
import '../../../utils/string_res.dart';

class MyAppointment extends StatelessWidget {
   MyAppointment({Key? key}) : super(key: key);
  MyAppointmentController myAppointmentController =
  Get.put(MyAppointmentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.scaffoldColor,
      appBar: commonAppbar(
        backgroundColor: ColorRes.scaffoldColor,
        title: StringRes.myAppointmentText,
        leading: Container(
          height: Get.height * 0.05,
          width: Get.width * 0.14,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.transparent,
            image: const DecorationImage(
              image: AssetImage(AssetRes.splashScreen1),
            ),
          ),
        ),
        bottom: TabBar(
          indicatorColor: Colors.blue,
          controller: myAppointmentController.tabController,
          unselectedLabelColor: ColorRes.greyColor,
          tabs: myAppointmentController.appointmentData,
          labelColor: ColorRes.blueColor,
          labelPadding: const EdgeInsets.all(6),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              appointmentListview(),
              SizedBox(
                height: Get.height * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
