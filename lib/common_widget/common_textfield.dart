import 'package:flutter/material.dart';

import '../utils/color_res.dart';

Widget textField({String? hintText,
  TextEditingController? controller,
  Widget? suffixIcon,
  Widget? prefixIcon,
  InputBorder? border,
  Color? fillColor,
  bool? filled,
  required bool obscureText,
  bool? isDense,
  TextInputType? keyboardType,
  BoxConstraints? constraints,
int? minLines,
int? maxLines = 1,
  void Function()? onTap,
  String? Function(String?)? validator,
  void Function(String)? onChanged,
  int? maxLength,
}) {
  return TextFormField(
    controller: controller,
    obscureText: obscureText,
    keyboardType: keyboardType,
    validator:validator,
    onChanged: onChanged,
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
    onTap: onTap,
    maxLines: maxLines,
    maxLength: maxLength,
    minLines: minLines,
  );
}
