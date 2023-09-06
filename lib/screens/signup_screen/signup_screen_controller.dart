import 'package:doctor/screens/login_screen/login_screen.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../services/firebase_services.dart';

class SignupScreenController extends GetxController {
  bool visiBal = true;
  String male = "Male";
  String female = "Female";
  String other = "Other";
  String? group;
  bool isFemale = false;
  bool isOther = false;
  bool isMale = false;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController birtDateController = TextEditingController();


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
    RegExp regExp = RegExp(pattern);
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
  String? genderError;
  void genderCondition(String? val) {
    if (val == null) {
      genderError = "Please enter gender";
     print(genderError);
    } else {
      genderError = null;
    }
    update(['radioButton']);
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

  void birthDateOnTap() async {
    DateTime? pickedDate = await showDatePicker(
      context: Get.context!,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      currentDate: DateTime.now(),
      lastDate: DateTime.now(),
    );
    if (pickedDate != null) {
      if (kDebugMode) {
        print(pickedDate);
      }
      String formattedDate = DateFormat('dd-MM-yyy').format(pickedDate);
      if (kDebugMode) {
        print(formattedDate);
      }

      birtDateController.text = formattedDate;
      update(["datePicker"]);
    } else {
      if (kDebugMode) {
        print("Date is not selected");
      }
    }
  }

  void passSuFix() {
    visiBal = !visiBal;
    update(['LoginController']);
  }

  void alreadydUserTextSignUp() {
    Get.to(LoginScreen());
  }

  Future<void> signUpButton() async {
    genderCondition(group);
    if (formKey.currentState!.validate()) {
      DatabaseReference databaseReference =
      FirebaseDatabase.instance.ref("User");

      Map? allData = await FirebaseServices.getData(databaseReference);
      List<Map> allDataList = [];
      if (allData != null) {
        String? key = databaseReference.push().key;
        Map<String, dynamic> userData = {
          'name': nameController.text.trim(),
          'email': emailController.text.trim(),
          'date': birtDateController.text.trim(),
          'mobileNumber': mobileController.text.trim(),
          'password': passwordController.text.trim(),
          'gender': group!.trim(),
        };
        allData.forEach((key, value) {
          value['id'] = key;
          allDataList.add(value);
        });

        bool value =
        allDataList.any((element) => element['email'] == userData['email']);

        if (value == false) {
          await FirebaseServices.addData(
              databaseReference.child(key!), userData)
              .then(
                (value) => Get.back(),
          );
          nameController.clear();
          emailController.clear();
          mobileController.clear();
          passwordController.clear();
          birtDateController.clear();
        } else {
          Get.snackbar('SignUp Error', 'Email Already Exits');
        }
      }
    }
  }
}
