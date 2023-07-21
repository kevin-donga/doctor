// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import '02_splash_screen_widget.dart';

class SlashScreen02 extends StatelessWidget {
  const SlashScreen02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( body: Center(
      child: splashStackDoctorImage(),
    ),);
  }
}
