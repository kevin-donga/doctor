import 'package:doctor/utils/string_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common_widget/common_text.dart';
import '../../utils/color_res.dart';

class HistoryScreenController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TabController? tabController;

  int selectedIndex = 0;
  List<Widget> data = [
    commonText(
      data: StringRes.messageText,
      fontSize: 16,
      fontFamily: StringRes.josefinSansBold,
    ),
    commonText(
      data: StringRes.historyVoiceText,
      fontSize: 16,
      fontFamily: StringRes.josefinSansBold,
    ),
    commonText(
      data: StringRes.historyVideoText,
      fontSize: 16,
      fontFamily: StringRes.josefinSansBold,
    ),

  ];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tabController = TabController(length: data.length, vsync: this);
  }
}
