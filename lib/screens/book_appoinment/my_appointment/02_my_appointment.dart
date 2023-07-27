import 'package:doctor/screens/book_appoinment/my_appointment/02_my_appointment_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '02_my_appointment_widget.dart';

class MyAppointmentMessage extends StatelessWidget {
  const MyAppointmentMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MyAppointmentMessageController());
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              myAppointmentAppbar(),
              SizedBox(
                height: Get.height * 0.02,
              ),
              containerWidget(),
              SizedBox(
                height: Get.height * 0.02,
              ),
              introduction(),
              SizedBox(
                height: Get.height * 0.02,
              ),
              package(),
              messageButton(),
            ],
          ),
        ),
      ),
    );
  }
}
