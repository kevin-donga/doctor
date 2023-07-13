import 'package:flutter/material.dart';

Widget textField(
    {String? hintText,
    Widget? suffixIcon,
    Widget? prefixIcon,
    InputBorder? border,
    Color? fillColor,
    bool? filled,
    required bool obscureText,
    bool? isDense,
    BoxConstraints? constraints}) {
  return TextFormField(
    obscureText: obscureText,
    decoration: InputDecoration(
      border: border,
      focusedBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
      enabledBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
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
