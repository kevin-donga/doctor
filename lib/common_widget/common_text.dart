import 'package:flutter/material.dart';

Widget commonText(
    {required String data,
      int? maxLines,
      TextOverflow? overflow,
    double? fontSize,
    Color? color,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    TextDecoration? decoration,
    double? height,
    String? fontFamily}) {
  return Text(
    data,
    overflow: overflow,
    maxLines: maxLines,
    style: TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      fontFamily: fontFamily,
      decoration: decoration,
      height: height,
    ),
    textAlign: textAlign,
  );
}
