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
