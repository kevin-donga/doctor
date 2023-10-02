import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login_screen_controller.dart';
import 'login_screen_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // physics: const NeverScrollableScrollPhysics(),
        child: Center(
          child: Form(
            key: loginController.formKey,
            child: Padding(
              padding: EdgeInsets.all(height * 0.04),
              child: Column(children: [
                SizedBox(height: height * 0.14),
                topImageLogin(),
                SizedBox(height: height * 0.04),
                middleTextLogin(),
                SizedBox(height: height * 0.04),
                emailTextFieldLogin(),
                SizedBox(height: height * 0.04),
                passTextFieldLogin(),
                SizedBox(height: height * 0.04),
                loginButton(),
                SizedBox(height: height * 0.04),
                forgetPassTextLogin(),
                SizedBox(height: height * 0.09),
                newUserTextLogin(),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
