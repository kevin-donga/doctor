import 'package:doctor/screens/book_appoinment/my_appointment/01_my_appointment_controller.dart';
import 'package:doctor/screens/book_appoinment/my_appointment/01_my_appointment_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/color_res.dart';

class MyAppointment extends StatelessWidget {
  const MyAppointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MyAppointmentController());
    return Scaffold(
      backgroundColor: ColorRes.scaffoldColor,
      body: Column(
        children: [
          appointmentAppbar(),
          listview(),
        ],
      ),
    );
  }
}
