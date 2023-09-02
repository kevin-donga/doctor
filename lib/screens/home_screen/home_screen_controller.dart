import 'package:doctor/screens/home_screen/home_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/asset_res.dart';
import '../../utils/string_res.dart';
import '../profile_screen/profile_screen.dart';
import 'favorite_doctor/fav_doctor_screen.dart';
import 'notification_screen/notification_screen.dart';

class HomeScreenController extends GetxController {
  void onProfile() {
    Get.to(() => const ProfileScreen());
  }

  List topDoctorTab = ['All', 'General', 'Dentist', 'Nutrition'];
  List<Map> topDoctors = [
    {
      'photo': AssetRes.drManuBora,
      'name': 'Dr. Manu Bora',
      'qualification': 'Dentist Specialist'
    },
    {
      'photo': AssetRes.drSumitAgarwal,
      'name': 'Dr. Sumit Agarwal',
      'qualification': 'Medicine Specialist'
    },
    {
      'photo': AssetRes.drAnanyaVatiya,
      'name': 'Dr. Ananya Vatiya',
      'qualification': 'General Doctor'
    },
    {
      'photo': AssetRes.drManmeet,
      'name': 'Dr. Manmeet',
      'qualification': 'Neuro Specialist'
    },
    {
      'photo': AssetRes.drPravinShah,
      'name': 'Dr. Pravin Shah',
      'qualification': 'Dentist Specialist'
    },
    {
      'photo': AssetRes.drPritiDesai,
      'name': 'Dr. Priti Desai',
      'qualification': 'Heart Specialist'
    },
    {
      'photo': AssetRes.drShrutiPatel,
      'name': 'Dr. Shruti Patel',
      'qualification': 'Brain Specialist'
    },
    {
      'photo': AssetRes.drYagneshSharma,
      'name': 'Dr. Yagnesh Sharma',
      'qualification': 'Dentist Specialist'
    },
  ];
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
