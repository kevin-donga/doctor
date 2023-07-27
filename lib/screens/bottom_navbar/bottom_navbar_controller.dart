import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:doctor/screens/book_appoinment/book_appointment_screen.dart';
import 'package:doctor/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../articles_screen/articles_screen.dart';
import '../history_screen/history_screen.dart';
import '../review/review_screen.dart';

class BottomNavBarController extends GetxController {
  List<Map> bottom = [
    {
      'icon': Icons.home,
      'text': 'Home',
    },
    {
      'icon': Icons.date_range,
      'text': 'Appointme..',
    },
    {
      'icon': Icons.note_alt_rounded,
      'text': 'History',
    },
    {
      'icon': Icons.note_outlined,
      'text': 'Articles',
    },
    {
      'icon': Icons.person,
      'text': 'Profile',
    },
  ];
  List screen = [
    const HomeScreen(),
    const BookAppointment(),
    const HistoryScreen(),
    const ArticlesScreen(),
    const ReviewScreen(),
  ];
  final pageController = PageController(initialPage: 0);
  final notchController = NotchBottomBarController(index: 0);
  int maxCount = 5;
}
