import 'dart:convert';

import 'package:doctor/screens/bottom_navbar/bottom_navbar.dart';
import 'package:doctor/screens/forget_password/forget_password.dart';
import 'package:doctor/screens/signup_screen/signup_screen.dart';
import 'package:doctor/services/pref_service.dart';
import 'package:doctor/utils/pref_res.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../services/firebase_services.dart';

class LoginController extends GetxController {
  bool visiBal = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  FirebaseDatabase database = FirebaseDatabase.instance;
  List<Map> data = [];
  Map loginUser = {};

  void passSuFix() {
    visiBal = !visiBal;
    update(['LoginController']);
  }

  String? emailCondition(val) {
    update(['NameTextFiled']);
    bool emailValid = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(val!);

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
    if (formKey.currentState!.validate()) {
      // Get.snackbar("Login", "Success");
      List<Map> userDataList = [];
      DatabaseReference databaseReference =
          FirebaseDatabase.instance.ref('User');
      Map? allData = await FirebaseServices.getData(databaseReference);
      if (allData == null) {
        Get.snackbar("login", "please signup");
      } else {
        allData.forEach((key, value) {
          value['id'] = key;
          userDataList.add(value);
        });
        bool checkLogin = userDataList.any(
          (element) =>
              element['email'] == emailController.text.trim() &&
              element['password'] == passController.text.trim(),
        );
        int loginUserIndex = userDataList.indexWhere(
            (element) => element['email'] == emailController.text.trim());

        String loginUserUniqueKey = userDataList[loginUserIndex]['id'];
        // jsonEncode(loginUserUniqueKey);
        await PrefService.setValue(PrefRes.loginUser, loginUserUniqueKey);
        print(loginUserUniqueKey);
        await PrefService.setValue(PrefRes.isLogin, true);
        // Map currentUser = userDataList[loginUserIndex];
        print('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa');
        if (checkLogin == true) {
          Get.off(() => const BottomNavBar());
        } else {
          Get.snackbar("login failed", "please enter valid data");
        }
      }
    } else {
      Get.snackbar("Login", "Please Login with Correct detail");
    }
  }

  void forgetPassText() {
    Get.to(const ForgetPasswordScreen());
  }

  void newUserTextLogin() {
    Get.to(SignupScreen());
  }
}
