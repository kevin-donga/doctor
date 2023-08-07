import 'package:doctor/utils/color_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../common_widget/common_elevated_button.dart';
import '../../common_widget/common_text.dart';
import '../../common_widget/common_textfield.dart';
import '../../utils/string_res.dart';
import '../forget_password/forget_password_widget.dart';
import 'edit_profile_controller.dart';

Widget usernameTextFiled(){
  return  Padding(
    padding: const EdgeInsets.all(8.0),
    child: textField(
      hintText: StringRes.userTextFieldHintText,
      fillColor: Colors.blueGrey.shade50,
      filled: true,
      obscureText: false,
    ),
  );
}

Widget nameTextFiled(){
  return  Padding(
    padding: const EdgeInsets.all(8.0),
    child: textField(
      hintText: StringRes.nameTextFieldHintText,
      fillColor: Colors.blueGrey.shade50,
      filled: true,
      obscureText: false,
    ),
  );
}

Widget dateTextFiled(BuildContext context){
  return  Padding(
    padding: const EdgeInsets.all(8.0),
    child: GetBuilder<EditProfileController>(
      id: 'DatePicker',
      builder: (controller) {
        return textField(
          hintText: StringRes.dateTextFieldHintText,
          suffixIcon: const Icon(Icons.date_range),
          fillColor: Colors.blueGrey.shade50,
          filled: true,
          obscureText: false,
          controller: controller.dateController,
          onTap:()=>controller.dateAndTimePickerCondition(context),
        );
      }
    ),
  );
}

Widget emailTextFiled(){
  return  Padding(
    padding: const EdgeInsets.all(8.0),
    child: textField(
      hintText: StringRes.emailTextFieldHintText,
      suffixIcon: const Icon(Icons.email,),
      fillColor: Colors.blueGrey.shade50,
      filled: true,
      obscureText: false,
    ),
  );
}

Widget countryTextFiled(){
  return  Padding(
    padding: const EdgeInsets.all(8.0),
    child: IntlPhoneField(
      decoration:  InputDecoration(
       // labelText: 'Phone Number',
        hintText:StringRes.countryTextFieldHintText ,
        border: const OutlineInputBorder(
          borderSide: BorderSide(),
        ),
        filled: true,
        fillColor: Colors.blueGrey.shade50,
        focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(50),
          borderSide:  BorderSide(color:ColorRes.blueColor),
        ),
        enabledBorder:
        OutlineInputBorder(borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(color: ColorRes.greyColor),
        ),
      ),
      initialCountryCode: 'IN',
      onChanged: (phone) {
        print(phone.completeNumber);
      },
    ),
  );
}

Widget dropDownButton(){
  return GetBuilder<EditProfileController>(
    builder: (controller) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height:Get.height*0.07,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.blueGrey.shade50,
            border:Border.all(color: ColorRes.greyColor)
          ),
          child: DropdownButtonFormField(
            dropdownColor: ColorRes.scaffoldColor,
            isExpanded: true,
            iconSize: 30,
            iconEnabledColor: ColorRes.greyColor,
            decoration: const InputDecoration(border: InputBorder.none),
            value: controller.gender,
            hint: Padding(
              padding:  EdgeInsets.only(left: Get.width*0.03),
              child: commonText(
                data: StringRes.genderText,
                color: ColorRes.greyColor.shade700,
              ),
            ),
            items: [
              DropdownMenuItem(
                value: 'female',
                child: Padding(
                  padding:  EdgeInsets.only(left: Get.width*0.03),
                  child: commonText(data:StringRes.femaleGenderText, color: ColorRes.blackColor),
                ),
              ),
              DropdownMenuItem(
                value: 'male',
                child: Padding(
                  padding:  EdgeInsets.only(left: Get.width*0.03),
                  child: commonText(data: StringRes.maleGenderText, color:ColorRes.blackColor),
                ),
              ),
              DropdownMenuItem(
                value: 'other',
                child: Padding(
                  padding:  EdgeInsets.only(left: Get.width*0.03),
                  child: commonText(data:StringRes.otherGenderText, color: ColorRes.blackColor),
                ),
              )
            ],
            onChanged: controller.dropDownButtonCondition,
          ),
        ),
      );
    }
  );
}

Widget editButton() {
  return GetBuilder<EditProfileController>(builder: (controller) {
    return Padding(
      padding: EdgeInsets.only(
        top: height * 0.02,
      ),
      child: commonElevatedButton(
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(height * 0.25))),
        onPressed: () => controller.editProfile(),
        widget: Padding(
          padding: EdgeInsets.only(
            left: width * 0.34,
            right: width * 0.34,
            top: height * 0.02,
            bottom: height * 0.02,
          ),
          child: FittedBox(
            child: commonText(data: StringRes.updateText),
          ),
        ),
      ),
    );
  });
}