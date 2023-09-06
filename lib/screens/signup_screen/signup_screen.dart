import 'package:doctor/screens/signup_screen/signup_screen_controller.dart';
import 'package:doctor/screens/signup_screen/signup_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
   SignupScreen({Key? key}) : super(key: key);
SignupScreenController signupScreenController=Get.put(SignupScreenController());
  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    Get.put(SignupScreenController());
      return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Form(
            key: signupScreenController.formKey,
            child: Padding(
              padding: EdgeInsets.all(height * 0.04),
              child: Column(children: [
                topImageSignUp(),
                SizedBox(height: height * 0.02),
                middleTextSignUp(),
                SizedBox(height: height * 0.02),
                nameTextFieldSignUp(),
                SizedBox(height: height * 0.03),
                emailTextFieldSignUp(),
                SizedBox(height: height * 0.03),
                textFieldDate(),
                SizedBox(height: height * 0.03),
                mobileTextFieldSignUp(),
                SizedBox(height: height * 0.03),
                passTextFieldSignUp(),
                SizedBox(height: height * 0.03),
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
        ),
      ),
    );
  }
}
