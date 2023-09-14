import 'dart:convert';

import 'package:doctor/services/pref_service.dart';
import 'package:doctor/utils/pref_res.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/phone_number.dart';

class EditProfileController extends GetxController {
  TextEditingController dateController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController userController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  DateTime? date;
  DateTime? month;
  String? gender;
  String? group;
  String male = "Male";
  String female = "Female";
  String other = "Other";
  bool isFemale = false;
  bool isOther = false;
  bool isMale = false;
  Map loginUser = {};

  @override
  void onInit() {
    String loginString = PrefService.getString(PrefRes.loginUser);
    loginUser = jsonDecode(loginString);

    dateController.text = loginUser['date'];
    nameController.text = loginUser['name'];
    emailController.text = loginUser['email'];
    mobileController.text = loginUser['mobileNumber'];
    gender = loginUser['gender'];
    super.onInit();
  }

  void backArrow() {
    Get.back();
  }

  Future<void> dateAndTimePickerCondition(BuildContext context) async {
    print('datepicker');
    date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2001),
      lastDate: DateTime(2050, 3, 14),
    );
    dateController.text = date!.day.toString() +
        '/' +
        date!.month.toString() +
        '/' +
        date!.year.toString();
    update(['DatePicker']);
  }

  String? editDateCondition(String? val) {
    return val!.isEmpty ? 'Please enter valid Date' : null;
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

  String? editNameCondition(String? val) {
    return val!.isEmpty ? 'Please enter valid name' : null;
  }

  String? editUserCondition(String? val) {
    return val!.isEmpty ? 'Please enter valid name' : null;
  }

  String? editMobileCondition(val) {
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

  String? editEmailCondition(val) {
    update(['NameTextFiled']);
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(val!);

    return emailValid ? null : 'Please enter Valid Email';
  }

  Future<void> editProfile() async {
    genderCondition(group);
    if (formKey.currentState!.validate()) {
      Map<String, dynamic> editData = {
        'name': nameController.text.trim(),
        'email': emailController.text.trim(),
        'date': dateController.text.trim(),
        'mobileNumber': mobileController.text.trim(),
        'country': countryController.text.trim(),
        'gender': gender,
      };
      Get.back();
    } else {
      Get.snackbar('Edit Profile Error', 'Edit Try Unsuccessful');
    }

    // String key = editUser['id'];
    // DatabaseReference databaseReference =
    // FirebaseDatabase.instance.ref('userData').child(key);
    // await FirebaseServices.updateData(databaseReference, editData);
    // update(['LoginUserListTile']);
  }
}
