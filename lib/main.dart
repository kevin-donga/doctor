import 'package:doctor/screens/home_screen/home_screen.dart';
import 'package:doctor/screens/splash_screen/01_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'screens/book_appoinment/book_appointment_screen.dart';

Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  runApp(const GetMaterialApp(
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
