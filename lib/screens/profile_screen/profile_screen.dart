import 'package:doctor/screens/profile_screen/profile_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'profile_screen_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Get.put(ProfileController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: Get.height*0.04,),
            customAppbar(),
            SizedBox(height: Get.height*0.04,),
            profileImage(),
            SizedBox(height: Get.height*0.04,),
            listview(),
            logout(),
            SizedBox(height: Get.height*0.13,),
          ],
        ),
      ),
    );
  }
}
