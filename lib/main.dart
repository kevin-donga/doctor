import 'package:doctor/screens/book_appoinment/my_appointment/02_my_appointment.dart';
import 'package:doctor/screens/bottom_navbar/bottom_navbar.dart';
import 'package:doctor/screens/home_screen/home_screen.dart';
import 'package:doctor/screens/splash_screen/01_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'screens/edit_profile_screen/edit_profile_screen.dart';
import 'services/pref_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await PrefService.init();
  runApp(const GetMaterialApp(
    // home: EditProfileScreen(),
    home: SplashScreen(),
    // home: HomeScreen(),
    // home: BottomNavBar(),
    debugShowCheckedModeBanner: false,
  ));
}
