// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../common_widget/common_text.dart';
import '../../utils/asset_res.dart';
import '../../utils/string_res.dart';
import '02_splash_screen_controller.dart';

double h = Get.height;
double w = Get.width;

Widget splashStackDoctorImage() {
  Get.put(Splash2Controller());
  return SizedBox(
    height: h,
    width: w,
    child: Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        rotateCircleAvtarDoctorImage(
          topPosition: h * 0.20,
          leftPosition: w * -0.010,
          turns: const AlwaysStoppedAnimation(-0.07),
          radiusCircleAvtar: h * 0.05,
          backgroundImage: const AssetImage(AssetRes.splashScreen2Doctor1),
        ),
        rotateCircleAvtarDoctorImage(
          topPosition: h * 0.12,
          leftPosition: w * 0.30,
          turns: const AlwaysStoppedAnimation(-0.02),
          radiusCircleAvtar: h * 0.06,
          backgroundImage: const AssetImage(AssetRes.splashScreen2Doctor2),
        ),
        rotateCircleAvtarDoctorImage(
          topPosition: h * 0.14,
          rightPosition: w * 0.02,
          turns: const AlwaysStoppedAnimation(0.03),
          radiusCircleAvtar: h * 0.08,
          backgroundImage: const AssetImage(AssetRes.splashScreen2Doctor3),
        ),
        rotateCircleAvtarDoctorImage(
          topPosition: h * 0.30,
          leftPosition: w * 0.25,
          turns: const AlwaysStoppedAnimation(-0.07),
          radiusCircleAvtar: h * 0.09,
          backgroundImage: const AssetImage(AssetRes.splashScreen2Doctor4),
        ),
        rotateCircleAvtarDoctorImage(
          topPosition: h * 0.35,
          rightPosition: w * 0.030,
          turns: const AlwaysStoppedAnimation(-0.02),
          radiusCircleAvtar: h * 0.04,
          backgroundImage: const AssetImage(AssetRes.splashScreen2Doctor5),
        ),
        rotateCircleAvtarDoctorImage(
          topPosition: h * 0.45,
          leftPosition: w * -0.020,
          turns: const AlwaysStoppedAnimation(0.04),
          radiusCircleAvtar: h * 0.04,
          backgroundImage: const AssetImage(AssetRes.splashScreen2Doctor6),
        ),
        rotateCircleAvtarDoctorImage(
          topPosition: h * 0.55,
          leftPosition: w * 0.20,
          turns: const AlwaysStoppedAnimation(0.06),
          radiusCircleAvtar: h * 0.05,
          backgroundImage: const AssetImage(AssetRes.splashScreen2Doctor7),
        ),
        rotateCircleAvtarDoctorImage(
          topPosition: h * 0.53,
          rightPosition: w * 0.24,
          turns: const AlwaysStoppedAnimation(0.03),
          radiusCircleAvtar: h * 0.06,
          backgroundImage: const AssetImage(AssetRes.splashScreen2Doctor8),
        ),
        rotateCircleAvtarDoctorImage(
          topPosition: h * 0.50,
          rightPosition: w * -0.06,
          turns: const AlwaysStoppedAnimation(0.02),
          radiusCircleAvtar: h * 0.05,
          backgroundImage: const AssetImage(AssetRes.splashScreen2Doctor9),
        ),
        Positioned(
          bottom: h * 0.16,
          child: commonText(
            data: StringRes.welcomeSplash,
            color: Colors.blue,
            fontFamily: 'Josefin Sans',
            fontWeight: FontWeight.bold,
            fontSize: 36,
          ),
        ),
        Positioned(
          bottom: h * 0.06,
          child: commonText(
              data: StringRes.welcomeDescriptionSplash,
              color: Colors.black87,
              fontFamily: 'Josefin Sans',
              fontWeight: FontWeight.bold,
              fontSize: 14,
              textAlign: TextAlign.center),
        ),
      ],
    ),
  );
}

Widget rotateCircleAvtarDoctorImage(
    {double? heightPosition,
    double? widthPosition,
    double? bottomPosition,
    double? leftPosition,
    double? rightPosition,
    double? topPosition,
    required Animation<double> turns,
    ImageProvider? backgroundImage,
    double? radiusCircleAvtar}) {
  return Positioned(
    height: heightPosition,
    width: widthPosition,
    bottom: bottomPosition,
    left: leftPosition,
    right: rightPosition,
    top: topPosition,
    child: RotationTransition(
      turns: turns,
      child: CircleAvatar(
          backgroundImage: backgroundImage, radius: radiusCircleAvtar),
    ),
  );
}
