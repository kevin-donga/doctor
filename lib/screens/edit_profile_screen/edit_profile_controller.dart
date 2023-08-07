import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController {
  TextEditingController dateController = TextEditingController();
  DateTime? date;
  DateTime? month;
  String? gender;

  void backArrow() {
    Get.back();
  }

  Future<void> dateAndTimePickerCondition(BuildContext context) async {
    print('datepicker');
   date= await showDatePicker(
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

  void dropDownButtonCondition(val) {
    gender = val.toString();
    update(['dropDownButton']);
  }

  void editProfile(){
    Get.back();
  }
}
