import 'package:doctor/utils/icon_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common_widget/common_appbar.dart';
import '../../utils/asset_res.dart';
import '../../utils/color_res.dart';
import '../../utils/string_res.dart';
import '../../utils/color_res.dart';
import 'history_screen_controller.dart';
import 'history_screen_widget.dart';

class HistoryScreen extends StatelessWidget {
  HistoryScreen({Key? key}) : super(key: key);
  HistoryScreenController historyScreenController =
      Get.put(HistoryScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.scaffoldColor,
      appBar: commonAppbar(
        backgroundColor: ColorRes.scaffoldColor,
        title: StringRes.historyText,
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
        actionIcon: IconRes.searchIcon,
        bottom: TabBar(
          indicatorColor: Colors.blue,
          controller: historyScreenController.tabController,
          unselectedLabelColor: ColorRes.greyColor,
          tabs: historyScreenController.data,
          labelColor: ColorRes.blueColor,
          labelPadding: const EdgeInsets.all(6),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              historyListview(),
              SizedBox(
                height: Get.height * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
