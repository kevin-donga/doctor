import 'package:doctor/screens/bottom_navbar/bottom_navbar.dart';
import 'package:doctor/screens/forget_password/forget_password.dart';
import 'package:doctor/screens/signup_screen/signup_screen.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../home_screen/home_screen.dart';

class LoginController extends GetxController {
  bool visiBal = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  FirebaseDatabase database = FirebaseDatabase.instance;
  List<Map> data = [];

  void passSuFix() {
    visiBal = !visiBal;
    update(['LoginController']);
  }

  String? emailCondition(val) {
    update(['NameTextFiled']);
    bool emailValid = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(val!);

    return emailValid ? null : 'Please enter Valid Email';
  }

  String? passwordCondition(val) {
    update(['NameTextFiled']);
    RegExp regex =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (val!.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(val)) {
        return 'Enter valid password';
      } else {
        return null;
      }
    }
  }

  Future<void> loginButton() async {
    // if (formKey.currentState!.validate())
    // {
    //   Get.to(const HomeScreen());
    // } else {
    //   Get.snackbar('Login Error', 'Enter Valid Data');
    // }
    if (formKey.currentState!.validate()) {
      var d = await database.ref('User').once();
      Map temp = d.snapshot.value as Map;
      data.clear();
      temp.forEach((key, value) {
        data.add(value);
      });
      print(data);
      data.forEach((element) {
        if (element["Email"] == emailController.text &&
            element["Password"] ==
                passController.text) {
          Get.to(const HomeScreen());
        }
      });
    }
    else{
      Get.snackbar('Data must be Same', 'Email and Password must be same');
    }
  }
  void forgetPassText() {
    Get.to(const ForgetPasswordScreen());
  }
  void newUserTextLogin() {
    Get.to(SignupScreen());
  }
}
