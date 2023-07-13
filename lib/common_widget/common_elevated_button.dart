import 'package:flutter/material.dart';

Widget commonElevatedButton(
    {required void Function()? onPressed, MaterialStateProperty<OutlinedBorder> ? shape,required Widget widget}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.blue),
      shape:shape
    ),
    child: widget,
  );
}
