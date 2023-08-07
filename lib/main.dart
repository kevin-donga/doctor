import 'package:doctor/screens/profile_screen/profile_screen.dart';
import 'package:doctor/screens/splash_screen/01_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'screens/edit_profile_screen/edit_profile_screen.dart';
import 'screens/signup_screen/signup_screen.dart';

Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  runApp( GetMaterialApp(
   //home: SignupScreen(),
     home: ProfileScreen(),
    // home: HomeScreen(),
    // home: BottomNavBar(),
    debugShowCheckedModeBanner: false,
  ));
}
