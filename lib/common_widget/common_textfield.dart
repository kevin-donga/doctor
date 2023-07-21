import 'package:flutter/material.dart';

import '../utils/color_res.dart';

Widget textField(
    {String? hintText,
    Widget? suffixIcon,
    Widget? prefixIcon,
    InputBorder? border,
    Color? fillColor,
    bool? filled,
    required bool obscureText,
    bool? isDense,
      TextEditingController? controller,
      TextInputType? keyboardType,
    BoxConstraints? constraints}) {
  return TextFormField(
    controller: controller,
    obscureText: obscureText,
    keyboardType: keyboardType,
    decoration: InputDecoration(
      border: border,
      focusedBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: ColorRes.blueColor),
          ),
      enabledBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(color: ColorRes.greyColor),
          ),
      hintText: hintText,
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      fillColor: fillColor,
      isDense: isDense,
      constraints: constraints,
      filled: filled,
    ),
  );
}
