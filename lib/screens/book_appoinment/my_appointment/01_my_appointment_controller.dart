import 'package:doctor/screens/book_appoinment/book_appointment_screen.dart';
import 'package:doctor/services/firebase_services.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common_widget/common_text.dart';
import '../../../utils/asset_res.dart';
import '../../../utils/icon_res.dart';
import '../../../utils/string_res.dart';

class MyAppointmentController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TabController? tabController;
  Map? appointmentMap = {};
  List<Map> appointmentList = [];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tabController = TabController(length: appointmentData.length, vsync: this);
    getAppointmentData();
    print(appointmentList);
  }

  Future<void> getAppointmentData() async {
    DatabaseReference ref = FirebaseServices.database!.ref('Appointment');
    appointmentMap = await FirebaseServices.getData(ref);
    appointmentMap!.forEach((key, value) {
      appointmentList.add(value);
    });
    update(['tab']);
    print(appointmentList);
  }

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

  List<Map> doctorsList = [
    {
      'photo': AssetRes.drManuBora,
      'name': 'Dr. Manu Bora',
      'message': 'Voice Call',
      'Date': 'Dec 12,2022|16:00 AM',
      'icon': IconRes.messageIcon,
    },
    {
      'photo': AssetRes.drSumitAgarwal,
      'name': 'Dr. Sumit Agarwal',
      'message': 'Messaging',
      'Date': 'Dec 12,2022|16:00 AM',
      'icon': IconRes.phoneIcon,
    },
    {
      'photo': AssetRes.drAnanyaVatiya,
      'name': 'Dr. Ananya Vatiya',
      'message': 'Messaging',
      'Date': 'Dec 12,2022|16:00 AM',
      'icon': IconRes.videoIcon,
    },
    {
      'photo': AssetRes.drManmeet,
      'name': 'Dr. Manmeet',
      'message': 'Messaging',
      'Date': 'Dec 12,2022|16:00 AM',
      'icon': IconRes.messageIcon,
    },
    {
      'photo': AssetRes.drPravinShah,
      'name': 'Dr. Pravin Shah',
      'message': 'Messaging',
      'Date': 'Dec 12,2022|16:00 AM',
      'icon': IconRes.phoneIcon,
    },
    {
      'photo': AssetRes.drPritiDesai,
      'name': 'Dr. Priti Desai',
      'message': 'Messaging',
      'Date': 'Dec 12,2022|16:00 AM',
      'icon':  IconRes.videoIcon,
    },
    {
      'photo': AssetRes.drShrutiPatel,
      'name': 'Dr. Shruti Patel',
      'message': 'Messaging',
      'Date': 'Dec 12,2022|16:00 AM',
      'icon': IconRes.messageIcon,
    },
    {
      'photo': AssetRes.drYagneshSharma,
      'name': 'Dr. Yagnesh Sharma',
      'message': 'Messaging',
      'Date': 'Dec 12,2022|16:00 AM',
      'icon': IconRes.phoneIcon,
    },
  ];



}