import 'package:doctor/screens/book_appoinment/book_appointment_controller.dart';
import 'package:doctor/screens/book_appoinment/book_appointment_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookAppointment extends StatelessWidget {
  const BookAppointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(BookAppointmentController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: Get.height*0.04,),
           datePickerText(),
            datePicker(),
            timePicker(),
            bookAppointmentButton(),
            SizedBox(height: Get.height*0.03,)
          ],
        ),
      ),
    );
  }
}
