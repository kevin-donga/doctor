import 'package:doctor/screens/signup_screen/signup_screen_controller.dart';
import 'package:doctor/screens/signup_screen/signup_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height=Get.height;
    Get.put(SignupScreenController());
    return Scaffold(body: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(height * 0.04),
          child: Column(children: [
            SizedBox(height: height * 0.14),
            topImageSignUp(),
            SizedBox(height: height * 0.04),
            middleTextSignUp(),
            SizedBox(height: height * 0.04),
            nameTextFieldSignUp(),
            SizedBox(height: height * 0.04),
            emailTextFieldSignUp(),
            SizedBox(height: height * 0.04),
            mobileTextFieldSignUp(),
            SizedBox(height: height * 0.04),
            passTextFieldSignUp(),
            SizedBox(height: height * 0.04),
            radioButton(),
            SizedBox(height: height * 0.04),
            signUpButton(),
            SizedBox(height: height * 0.05),
            // forgetPassTextLogin(),
            // SizedBox(height: height * 0.09),
            alreadydUserTextSignUp(),
          ]),
        ),
      ),
    ),);
  }
}
