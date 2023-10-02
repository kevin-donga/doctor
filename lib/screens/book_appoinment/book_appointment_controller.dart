import 'dart:ffi';

import 'package:doctor/services/firebase_services.dart';
import 'package:doctor/services/pref_service.dart';
import 'package:doctor/utils/pref_res.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import 'my_appointment/02_my_appointment.dart';

class BookAppointmentController extends GetxController {
  String selectedDate = '';
  String dateCount = '';
  String range = '';
  String rangeCount = '';
  String timePass = '09.00 Am';
  int _selectedIndex = 0;
  Map? doctorData;
  Map? userData;
  TextEditingController problem = TextEditingController();

  int get selectedIndex => _selectedIndex;
  List bookAppointmentList = [
    '09.00 Am',
    '09.30 Am',
    '10.00 Am',
    '10.30 Am',
    '11.00 Am',
    '11.30 Am',
    '15.00 Am',
    '15.30 Am',
    '16.00 Am',
    '16.30 Am',
    '17.00 Am',
    '17.30 Am',
  ];

  BookAppointmentController(this.doctorData);

  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    await getUserData();
    super.onInit();
  }

  Future<void> getUserData() async {
    String userId = PrefService.getString(PrefRes.loginUser);
    print(userId);
    DatabaseReference databaseReference =
        FirebaseServices.database!.ref('User/$userId');
    userData = await FirebaseServices.getData(databaseReference);
    print(userData);
  }

  set selectedIndex(int value) {
    _selectedIndex = value;
    timePass = bookAppointmentList[value];
    update(["container"]);
  }

  void backArrow() {
    Get.back();
  }

  void onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    if (args.value is PickerDateRange) {
      range = '${DateFormat('MM/dd/yyyy').format(args.value.startDate)} -'
          ' ${DateFormat('MM/dd/yyyy').format(args.value.endDate ?? args.value.startDate)}';
    } else if (args.value is DateTime) {
      selectedDate = DateFormat('dd/MM/yyyy').format(args.value);
    } else if (args.value is List<DateTime>) {
      dateCount = args.value.length.toString();
    } else {
      rangeCount = args.value.length.toString();
    }
    update(['DatePicker']);
  }

  Future<void> bookAppointment() async {
    String userId = PrefService.getString(PrefRes.loginUser);
    Map<String, dynamic> appointment = {
      "userId": userId,
      "userName": userData!["name"],
      "doctorName": doctorData!["name"],
      "doctorId": doctorData!["id"],
      "time": timePass,
      "date": selectedDate,
      "problem": problem.text.trim(),
      "states": "pending"
    };

    DatabaseReference databaseReference =
        FirebaseServices.database!.ref('Appointment');
    String? key = databaseReference.push().key;
    await FirebaseServices.addData(databaseReference.child(key!), appointment)
        .then((value) {
      bookAppointmentButton();
    });
  }

  void bookAppointmentButton() {
    Get.to(const MyAppointmentMessage())!.then((value) {
      Get.back();
      Get.back();
    });
  }
}
