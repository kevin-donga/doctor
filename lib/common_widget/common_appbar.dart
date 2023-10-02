import 'package:doctor/common_widget/common_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/asset_res.dart';
import '../utils/color_res.dart';
import '../utils/icon_res.dart';
import '../utils/string_res.dart';

PreferredSizeWidget commonAppbar({
  Color? backgroundColor,
  IconData? icon,
  void Function()? onActionTap,
  Color? color,
  required String title,
  Widget? leading,
  IconData? actionIcon,
  String? img,
  PreferredSizeWidget? bottom,
}) {
  return AppBar(
    backgroundColor: backgroundColor,
    leading: leading,
    title: commonText(
      data: title,
      color: ColorRes.blackColor,
      fontSize: 20,
      fontFamily: StringRes.josefinSansBold,
    ),
    //centerTitle: true,
    actions: [
      InkWell(
          onTap: onActionTap,
          child: Icon(
            actionIcon,
            color: ColorRes.blackColor,
          )),
      IconButton(
        onPressed: () {},
        icon: const Icon(
          IconRes.moreHorizIcon,
          color: ColorRes.blackColor,
        ),
      ),
    ],
    bottom: bottom,
  );
}
