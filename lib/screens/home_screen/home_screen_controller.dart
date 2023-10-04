import 'package:doctor/screens/home_screen/home_screen_widget.dart';
import 'package:doctor/services/firebase_services.dart';
import 'package:doctor/services/pref_service.dart';
import 'package:doctor/utils/pref_res.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/string_res.dart';
import '../profile_screen/profile_screen.dart';
import 'describe_doctor/describe_doctor.dart';
import 'favorite_doctor/fav_doctor_screen.dart';
import 'home_screen.dart';
import 'notification_screen/notification_screen.dart';

class HomeScreenController extends GetxController {
  int selectedIndex = 0;
  int selectedGridIndex = 0;
  bool selectedGridIndexBool = false;
  List<Map> doctorList = [];
  Map? currentUser = {};
  String loginUserUniqueKey = '';
  Map? data = {};

  @override
  void onInit() {
    loginUserUniqueKey = PrefService.getString(PrefRes.loginUser);
    getLoginUser();
    getDoctorList();
    super.onInit();
  }

  Future<void> getLoginUser() async {
    //String? getData = PrefService.getString(PrefRes.loginUser);
    DatabaseReference databaseReference =
        FirebaseDatabase.instance.ref("User/$loginUserUniqueKey");
    currentUser = await FirebaseServices.getData(databaseReference);
    print(currentUser);
    update(["loginUserAppBar"]);
  }

  Map allDoctorData = {};

  Future<void> getDoctorList() async {
    DatabaseReference reference = FirebaseDatabase.instance.ref("Admin");
    allDoctorData = (await FirebaseServices.getData(reference))!;
    allDoctorData.forEach((key, value) {
      print(key);
      value["id"] = key;
      doctorList.add(value);
    });
    // print(doctorList);
    // print(allDoctorData);
    update(['HomeScreenController', 'abc']);
  }

  void onProfile() {
    Get.to(() => const ProfileScreen());
  }

  void onAllDoctor() {
    update();
    Get.to(() => const TopDoctors());
    update(['HomeScreenController']);
  }

  void onBackSpecialityWiseDoctor() {
    selectedGridIndexBool == false;
    // print('=============>$selectedGridIndexBool');
    Get.back();
    update(['HomeScreenController']);
  }

  void onSpecialityWiseDoctor(int index) {
    selectedGridIndex = index;
    selectedGridIndexBool = true;
    //print('=============>$selectedGridIndexBool');
    update();
    Get.to(() => const TopDoctors());
    update(['HomeScreenController']);
  }

  void onDoctorInfo(int index) {
    // selectedIndex = index;
    String? doId = doctorList[index]["id"];
    print(doId);
    Get.to(() => DescribedDoctor(
          doId: doId,
        ));
    update(['HomeScreenController']);
  }

  List topDoctorTab = ['All', 'General', 'Dentist', 'Nutrition'];

  bool topDoctorTabDecoration = false;

  void onNotification() {
    Get.to(() => const NotificationScreen());
  }

  void onLikedDoctor() {
    Get.to(() => const FavDoctorScreen());
  }

  Widget greeting() {
    final hour = TimeOfDay.now().hour;
    // var hour = DateTime.now().hour;
    if (hour <= 12) {
      return appbarGreetingText(data: StringRes.appbarMorningTitle);
    } else if (hour <= 17) {
      return appbarGreetingText(data: StringRes.appbarAfternoonTitle);
    }
    return appbarGreetingText(data: StringRes.appbarEveningTitle);
  }
}
