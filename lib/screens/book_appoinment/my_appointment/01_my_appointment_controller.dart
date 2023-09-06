import 'package:doctor/screens/book_appoinment/book_appointment_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common_widget/common_text.dart';
import '../../../utils/string_res.dart';

class MyAppointmentController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TabController? tabController;

  void containerOnTap(){
    Get.to(const BookAppointment());
  }
  List<Widget> appointmentData = [
    commonText(
      data: StringRes.upcomingText,
      fontSize: 16,
      fontFamily: StringRes.josefinSansBold,
    ),
    commonText(
      data: StringRes.acceptText,
      fontSize: 16,
      fontFamily: StringRes.josefinSansBold,
    ),
    commonText(
      data: StringRes.cancelledText,
      fontSize: 16,
      fontFamily: StringRes.josefinSansBold,
    ),

  ];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tabController = TabController(length: appointmentData.length, vsync: this);
  }
}