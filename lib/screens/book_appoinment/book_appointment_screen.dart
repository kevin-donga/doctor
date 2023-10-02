import 'package:doctor/screens/book_appoinment/book_appointment_controller.dart';
import 'package:doctor/screens/book_appoinment/book_appointment_widget.dart';
import 'package:doctor/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/color_res.dart';
import '../../common_widget/common_appbar.dart';
import '../../utils/icon_res.dart';

class BookAppointment extends StatelessWidget {
  final Map? doctorData;

  const BookAppointment({Key? key, this.doctorData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(BookAppointmentController(doctorData));
    return Scaffold(
      backgroundColor: ColorRes.scaffoldColor,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: ColorRes.scaffoldColor,
        title: const Text(StringRes.bookAppointmentText),
        leading: GetBuilder<BookAppointmentController>(builder: (controller) {
          return IconButton(
            icon: const Icon(IconRes.backArrowIcon),
            onPressed: controller.backArrow,
            color: ColorRes.blackColor,
          );
        }),
        actions: [
          PopupMenuButton(onSelected: (value) {
            // your logic
            // setState(() {
            //   selectedItem = value.toString();
            // });
            print(value);
            //Navigator.pushNamed(context, value.toString());
          }, itemBuilder: (BuildContext bc) {
            return const [
              PopupMenuItem(
                child: Text("Rate Us!"),
                value: '/hello',
              ),
              PopupMenuItem(
                child: Text("About"),
                value: '/about',
              ),
              PopupMenuItem(
                child: Text("Contact"),
                value: '/contact',
              )
            ];
          })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.001,
              ),
              textFieldDate(),
              datePickerText(),
              datePicker(),
              timePicker(),
              bookAppointmentButton(),
            ],
          ),
        ),
      ),
    );
  }
}
