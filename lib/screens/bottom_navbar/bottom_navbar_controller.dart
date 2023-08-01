import 'dart:developer';

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:doctor/screens/book_appoinment/book_appointment_screen.dart';
import 'package:doctor/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../articles_screen/articles_screen.dart';
import '../book_appoinment/my_appointment/01_my_appointment.dart';
import '../history_screen/history_screen.dart';
import '../profile_screen/profile_screen.dart';

class BottomNavBarController extends GetxController {
  List<Map> bottomItem = [
    {
      'inactivateIcon': Icons.home_outlined,
      'ActivateIcon': Icons.home,
      'text': 'Home',
    },
    {
      'inactivateIcon': Icons.date_range,
      'ActivateIcon': Icons.date_range_outlined,
      'text': 'Appoin',
    },
    {
      'inactivateIcon': Icons.note_alt_outlined,
      'ActivateIcon': Icons.note_alt_rounded,
      'text': 'History',
    },
    {
      'inactivateIcon': Icons.note_add_outlined,
      'ActivateIcon': Icons.note_add_rounded,
      'text': 'Articles',
    },
    {
      'inactivateIcon': Icons.person_2_outlined,
      'ActivateIcon': Icons.person,
      'text': 'Profile',
    },
  ];
  List screen = [
    const HomeScreen(),
    const MyAppointment(),
     HistoryScreen(),
    const ArticleScreen(),
    const ProfileScreen(),
  ];
  final pageController = PageController(initialPage: 0);
  final notchController = NotchBottomBarController(index: 0);
  int maxCount = 5;
   void onTapBotomBar(index)
   {
     update(['BottomNavBarController']);
     log('current selected index $index');
     pageController.jumpToPage(index);

   }
}
