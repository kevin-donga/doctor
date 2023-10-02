import 'package:doctor/screens/profile_screen/profile_screen_controller.dart';
import 'package:doctor/utils/asset_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../common_widget/common_appbar.dart';
import '../../utils/color_res.dart';
import '../../utils/string_res.dart';
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
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: ColorRes.scaffoldColor,
        title: const Text(StringRes.profileText),
        leading: Container(
          height: Get.height * 0.05,
          width: Get.width * 0.14,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.transparent,
            image: const DecorationImage(
              image: AssetImage(AssetRes.splashScreen1),
            ),
          ),
        ),
        actions: [
          PopupMenuButton(onSelected: (value) {
            // your logic
            // setState(() {
            //   selectedItem = value.toString();
            // });
            print(value);
            //Navigator.pushNamed(context, value.toString());
          }, itemBuilder: (BuildContext bc) {
            return const [
              PopupMenuItem(
                child: Text("Rate Us!"),
                value: '/hello',
              ),
              PopupMenuItem(
                child: Text("About"),
                value: '/about',
              ),
              PopupMenuItem(
                child: Text("Contact"),
                value: '/contact',
              )
            ];
          })
        ],
      ),
      body: GetBuilder<ProfileController>(builder: (controller) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: controller.loading
              ? const CircularProgressIndicator()
              : Column(
                  children: [
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    profileImage(),
                    SizedBox(
                      height: Get.height * 0.04,
                    ),
                    listview(),
                    logout(context),
                    SizedBox(
                      height: Get.height * 0.12,
                    ),
                  ],
                ),
        );
      }),
    );
  }
}
