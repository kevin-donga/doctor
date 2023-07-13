import 'package:doctor/utils/color_res.dart';
import 'package:flutter/cupertino.dart';

Widget commonDot({int? index, int? pageIndex}) {
  return AnimatedContainer(
      duration: Duration(
        milliseconds: 200,
      ),
      height: 8,
      width: index == pageIndex ? 20 : 8,
      margin: const EdgeInsets.only(left: 2.5, right: 2.5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: index == pageIndex
              ? ColorRes.commonDotExpanedColor
              : ColorRes.commonDotCollapsedColor.withOpacity(0.8)));
}
