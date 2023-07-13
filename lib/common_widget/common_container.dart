import 'package:flutter/material.dart';

Widget commonContainer(
    {double? height,
      double? width,
      Color? color,
      AlignmentGeometry? alignment,
      Decoration? decoration,
      EdgeInsetsGeometry? margin,
      EdgeInsetsGeometry? padding,
      Widget? child,
    }) {
  return Container(
    height: height,
    width: width,
    color: color,
    alignment: alignment,
    decoration: decoration,
    margin: margin,
    padding: padding,
    child: child,
  );
}
