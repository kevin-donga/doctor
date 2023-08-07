import 'package:doctor/screens/login_screen/login_screen.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreenController extends GetxController {
  bool visiBal = true;
  String male = "Male";
  String female = "Female";
  String other = "Other";
  String group = "Gender";
  bool isFemale = false;
  bool isOther = false;
  bool isMale = false;
  bool gender = true;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  FirebaseDatabase database = FirebaseDatabase.instance;

  String? nameCondition(String? val) {
    return val!.isEmpty ? 'Please enter valid name' : null;
  }

  String? nameOnchange(String val) {
    update(['NameTextFiled']);
  }

  String? emailCondition(val) {
    update(['NameTextFiled']);
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(val!);

    return emailValid ? null : 'Please enter Valid Email';
  }

  String? mobileCondition(val) {
    update(['NameTextFiled']);
    String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(pattern);
    if (val!.length == 0) {
      return 'Please enter mobile number';
    } else if (!regExp.hasMatch(val)) {
      return 'Please enter valid mobile number';
    }
    return null;
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

  void maleRadioButtonCondition(val) {
    group = val.toString();
    isMale = !isMale;
    update(['radioButton']);
  }

  void femaleRadioButtonCondition(val) {
    group = val.toString();
    isFemale = !isFemale;
    update(['radioButton']);
  }

  void otherRadioButtonCondition(val) {
    group = val.toString();
    isOther = !isOther;
    update(['radioButton']);
  }

  void passSuFix() {
    visiBal = !visiBal;
    update(['LoginController']);
  }

  void alreadydUserTextSignUp() {
    Get.to(LoginScreen());
  }

  void signUpButton() {
    update(['radioButton']);
    // if (formKey.currentState!.validate() && isMale == true ||
    //     isFemale == true ||
    //     isOther == true) {
    //   Get.to(LoginScreen());
    // } else {
    //   Get.snackbar('SignUp Error', 'Enter Valid Data');
    // }
    if (formKey.currentState!.validate()) {
      String? key=database.ref('User').push().key;
      database.ref('User').child(key!).set({
        'Name':nameController.text,
        'Password':passwordController.text,
        "Email": emailController.text,
        'Mobile Number':mobileController.text,
        'Key':key,
      });
      Get.to(LoginScreen());
    }
  }
}
