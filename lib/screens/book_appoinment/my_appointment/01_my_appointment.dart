import 'package:doctor/screens/book_appoinment/my_appointment/01_my_appointment_controller.dart';
import 'package:doctor/screens/book_appoinment/my_appointment/01_my_appointment_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/color_res.dart';

import '../../../common_widget/common_appbar.dart';
import '../../../utils/asset_res.dart';
import '../../../utils/string_res.dart';

class MyAppointment extends StatelessWidget {
  const MyAppointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MyAppointmentController());
    return Scaffold(
      backgroundColor: ColorRes.scaffoldColor,
      appBar: commonAppbar(
        title: StringRes.myAppointmentText,
        leading: Container(
          height: Get.height * 0.05,
          width: Get.width * 0.14,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.transparent,
            image: DecorationImage(
              image: AssetImage(AssetRes.splashScreen1),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          listview(),
        ],
      ),
    );
  }
}
