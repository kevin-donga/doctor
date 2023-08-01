import 'package:doctor/screens/profile_screen/profile_screen_controller.dart';
import 'package:doctor/utils/asset_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common_widget/common_appbar.dart';
import '../../utils/color_res.dart';
import '../../utils/icon_res.dart';
import '../../utils/string_res.dart';
import '../../utils/color_res.dart';
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
      backgroundColor: ColorRes.scaffoldColor,
      appBar: commonAppbar(
        title: StringRes.profileText,
        leading:  Container(
          height: Get.height * 0.05,
          width: Get.width * 0.14,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.transparent,
            image:  DecorationImage(
              image:AssetImage(AssetRes.splashScreen1),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: Get.height*0.02,),
            profileImage(),
            SizedBox(height: Get.height*0.04,),
            listview(),
            logout(),
            SizedBox(height: Get.height*0.16,),
          ],
        ),
      ),
    );
  }
}
