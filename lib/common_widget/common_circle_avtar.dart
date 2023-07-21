import 'package:flutter/material.dart';

Widget circleAvtar({ImageProvider? backgroundImage, double? radius,Widget? child}) {
  return CircleAvatar(
    backgroundImage: backgroundImage,
    radius: radius,
    child: child,
  );
}
