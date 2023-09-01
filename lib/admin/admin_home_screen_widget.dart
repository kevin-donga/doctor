import 'dart:ui';

import 'package:doctor/utils/color_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/asset_res.dart';

Widget adminContainer() {
  return Stack(
    clipBehavior: Clip.none,
    children: [
      Container(
        width: double.infinity,
        height: Get.height * 0.182,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xff4d94ff),
              Color(0xff1a75ff),
            ],
          ),
        ),
        child: Padding(
          padding:
              EdgeInsets.only(top: Get.height * 0.05, left: Get.width * 0.05),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi Handwerker! ",
                    style: TextStyle(
                      fontSize: 20,
                      color: ColorRes.whiteColor,
                    ),
                  ),
                  Text(
                    "Find Your Doctor",
                    style: TextStyle(
                      fontSize: 25,
                      color: ColorRes.whiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: Get.width * 0.18,
              ),
              Image.asset(
                AssetRes.doctorThumb3,
                width: Get.width * 0.24,
                height: Get.height * 0.07,
              ),
            ],
          ),
        ),
      ),
      Positioned(
        top: Get.height * 0.15,
        left: Get.width * 0.08,
        child: Container(
          width: 300,
          height: 54,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(
                  Icons.search,
                  color: ColorRes.greyColor,
                  size: 25,
                ),
                SizedBox(
                  width: Get.width * 0.02,
                ),
                const Text("Search..... ",
                    style: TextStyle(
                      fontSize: 17,
                      color: ColorRes.greyColor,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  width: Get.width * 0.39,
                ),
                const Icon(
                  Icons.clear,
                  color: ColorRes.greyColor,
                  size: 25,
                ),
              ],
            ),
          ),
        ),
      )
    ],
  );
}

Widget liveDoctor() {
  return Padding(
    padding: EdgeInsets.only(left: Get.width * 0.09),
    child: Column(
      children: [
        SizedBox(
          height: Get.height * 0.05,
        ),
        const Text(
          "Live Doctors",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: Get.height * 0.03,
        ),
      ],
    ),
  );
}

Widget adminListview() {
  return Expanded(
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: Get.width * 0.360,
              height: Get.height * 0.23,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage(
                    AssetRes.doctorThumb1,
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_circle_outline_rounded,
                      color: ColorRes.blackColor,
                      size: 40,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget secondListview() {
  return Expanded(
    child: ListView.builder(
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 80,
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xff2753f3), Color(0xff765afc)],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
