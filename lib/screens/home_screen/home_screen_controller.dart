import 'package:doctor/screens/home_screen/home_screen_widget.dart';
import 'package:doctor/services/firebase_services.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/asset_res.dart';
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

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getDoctorList();
  }

  Map allDoctorData = {};
  DatabaseReference reference = FirebaseDatabase.instance.ref("Admin");

  Future<void> getDoctorList() async {
    DatabaseReference reference = FirebaseDatabase.instance.ref("Admin");
    allDoctorData = (await FirebaseServices.getData(reference))!;
    allDoctorData.forEach((key, value) {
      doctorList.add(value);
    });
    print(doctorList);
    print(allDoctorData);
    update(['HomeScreenController', 'abc']);
  }

  void onProfile() {
    Get.to(() => const ProfileScreen());
  }

  void onAllDoctor() {
    selectedGridIndexBool == false;
    print('=============>$selectedGridIndexBool');
    update();
    // selectedGridIndex = index;
    Get.to(() => const TopDoctors());
    update(['HomeScreenController']);
  }

  void onBackSpecialityWiseDoctor() {
    selectedGridIndexBool == false;
    print('=============>$selectedGridIndexBool');
    Get.back();
  }

  void onSpecialityWiseDoctor(int index) {
    selectedGridIndex = index;
    selectedGridIndexBool = true;
    print('=============>$selectedGridIndexBool');
    update();
    Get.to(() => const TopDoctors());
    update(['HomeScreenController']);
  }

  void onDoctorInfo(int index) {
    // selectedIndex = index;
    Get.to(() => DescribedDoctor());
    update(['HomeScreenController']);
  }

  List topDoctorTab = ['All', 'General', 'Dentist', 'Nutrition'];
  // List<Map> topDoctors = [
  //   {
  //     'photo': AssetRes.drManuBora,
  //     'name': 'Dr. Manu Bora',
  //     'qualification': 'Dentist Specialist',
  //     'star': '4',
  //     'hospital': 'Christ Hospital in London, UK',
  //     'patient': '5,000+',
  //     'experience': '10+',
  //     'rating': '4.6',
  //     'reviews': '5,479',
  //     'about': 'Doctors are considered the most important '
  //         'and responsible people in society. They are the '
  //         'ones who support when someone is struggling with'
  //         ' their health. Doctors are the ones to have a profound'
  //         ' knowledge of all kinds of diseases, their symptoms, and their treatments.',
  //     'workTime': 'Monday-Friday, 08:00 AM-20:00 AM',
  //   },
  //   {
  //     'photo': AssetRes.drSumitAgarwal,
  //     'name': 'Dr. Sumit Agarwal',
  //     'qualification': 'Medicine Specialist',
  //     'star': '4',
  //     'hospital': 'Christ Hospital in London, UK',
  //     'patient': '5,000+',
  //     'experience': '10+',
  //     'rating': '4.6',
  //     'reviews': '5,479',
  //     'about': 'Doctors are considered the most important '
  //         'and responsible people in society. They are the '
  //         'ones who support when someone is struggling with'
  //         ' their health. Doctors are the ones to have a profound'
  //         ' knowledge of all kinds of diseases, their symptoms, and their treatments.',
  //     'workTime': 'Monday-Friday, 08:00 AM-20:00 AM',
  //   },
  //   {
  //     'photo': AssetRes.drAnanyaVatiya,
  //     'name': 'Dr. Ananya Vatiya',
  //     'qualification': 'General Doctor',
  //     'star': '4',
  //     'hospital': 'Christ Hospital in London, UK',
  //     'patient': '5,000+',
  //     'experience': '10+',
  //     'rating': '4.6',
  //     'reviews': '5,479',
  //     'about': 'Doctors are considered the most important '
  //         'and responsible people in society. They are the '
  //         'ones who support when someone is struggling with'
  //         ' their health. Doctors are the ones to have a profound'
  //         ' knowledge of all kinds of diseases, their symptoms, and their treatments.',
  //     'workTime': 'Monday-Friday, 08:00 AM-20:00 AM',
  //   },
  //   {
  //     'photo': AssetRes.drManmeet,
  //     'name': 'Dr. Manmeet',
  //     'qualification': 'Neuro Specialist',
  //     'star': '4',
  //     'hospital': 'Christ Hospital in London, UK',
  //     'patient': '5,000+',
  //     'experience': '10+',
  //     'rating': '4.6',
  //     'reviews': '5,479',
  //     'about': 'Doctors are considered the most important '
  //         'and responsible people in society. They are the '
  //         'ones who support when someone is struggling with'
  //         ' their health. Doctors are the ones to have a profound'
  //         ' knowledge of all kinds of diseases, their symptoms, and their treatments.',
  //     'workTime': 'Monday-Friday, 08:00 AM-20:00 AM',
  //   },
  //   {
  //     'photo': AssetRes.drPravinShah,
  //     'name': 'Dr. Pravin Shah',
  //     'qualification': 'Ophthal Specialist',
  //     'star': '4',
  //     'hospital': 'Christ Hospital in London, UK',
  //     'patient': '5,000+',
  //     'experience': '10+',
  //     'rating': '4.6',
  //     'reviews': '5,479',
  //     'about': 'Doctors are considered the most important '
  //         'and responsible people in society. They are the '
  //         'ones who support when someone is struggling with'
  //         ' their health. Doctors are the ones to have a profound'
  //         ' knowledge of all kinds of diseases, their symptoms, and their treatments.',
  //     'workTime': 'Monday-Friday, 08:00 AM-20:00 AM',
  //   },
  //   {
  //     'photo': AssetRes.drPritiDesai,
  //     'name': 'Dr. Priti Desai',
  //     'qualification': 'Nutrition Specialist',
  //     'star': '4',
  //     'hospital': 'Christ Hospital in London, UK',
  //     'patient': '5,000+',
  //     'experience': '10+',
  //     'rating': '4.6',
  //     'reviews': '5,479',
  //     'about': 'Doctors are considered the most important '
  //         'and responsible people in society. They are the '
  //         'ones who support when someone is struggling with'
  //         ' their health. Doctors are the ones to have a profound'
  //         ' knowledge of all kinds of diseases, their symptoms, and their treatments.',
  //     'workTime': 'Monday-Friday, 08:00 AM-20:00 AM',
  //   },
  //   {
  //     'photo': AssetRes.drShrutiPatel,
  //     'name': 'Dr. Shruti Patel',
  //     'qualification': 'Radiology Specialist',
  //     'star': '4',
  //     'hospital': 'Christ Hospital in London, UK',
  //     'patient': '5,000+',
  //     'experience': '10+',
  //     'rating': '4.6',
  //     'reviews': '5,479',
  //     'about': 'Doctors are considered the most important '
  //         'and responsible people in society. They are the '
  //         'ones who support when someone is struggling with'
  //         ' their health. Doctors are the ones to have a profound'
  //         ' knowledge of all kinds of diseases, their symptoms, and their treatments.',
  //     'workTime': 'Monday-Friday, 08:00 AM-20:00 AM',
  //   },
  //   {
  //     'photo': AssetRes.drYagneshSharma,
  //     'name': 'Dr. Yagnesh Sharma',
  //     'qualification': 'Dentist Specialist',
  //     'star': '4',
  //     'hospital': 'Christ Hospital in London, UK',
  //     'patient': '5,000+',
  //     'experience': '10+',
  //     'rating': '4.6',
  //     'reviews': '5,479',
  //     'about': 'Doctors are considered the most important '
  //         'and responsible people in society. They are the '
  //         'ones who support when someone is struggling with'
  //         ' their health. Doctors are the ones to have a profound'
  //         ' knowledge of all kinds of diseases, their symptoms, and their treatments.',
  //     'workTime': 'Monday-Friday, 08:00 AM-20:00 AM',
  //   },
  // ];
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
      // Text('Good Morning', style: TextStyle(
      //     color: Colors.black,
      //     fontSize: 14,
      //     fontWeight: FontWeight.w900,
      //     fontFamily: StringRes.josefinSans),);
    } else if (hour <= 17) {
      return appbarGreetingText(data: StringRes.appbarAfternoonTitle);
    }
    return appbarGreetingText(data: StringRes.appbarEveningTitle);
  }
}
