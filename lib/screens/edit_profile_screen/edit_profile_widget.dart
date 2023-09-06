import 'package:doctor/utils/color_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../common_widget/common_elevated_button.dart';
import '../../common_widget/common_text.dart';
import '../../common_widget/common_textfield.dart';
import '../../utils/icon_res.dart';
import '../../utils/string_res.dart';
import '../forget_password/forget_password_widget.dart';
import 'edit_profile_controller.dart';

Widget usernameTextFiled(){
  return  Padding(
    padding: const EdgeInsets.all(8.0),
    child: GetBuilder<EditProfileController>(
      builder: (controller) {
        return textField(
          validator: controller.editUserCondition,
          hintText: StringRes.userTextFieldHintText,
          fillColor: Colors.blueGrey.shade50,
          filled: true,
          obscureText: false,
        );
      }
    ),
  );
}

Widget nameTextFiled(){
  return  Padding(
    padding: const EdgeInsets.all(8.0),
    child: GetBuilder<EditProfileController>(
      builder: (controller) {
        return textField(
          controller: controller.nameController,
          validator: controller.editNameCondition,
          hintText: StringRes.nameTextFieldHintText,
          fillColor: Colors.blueGrey.shade50,
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
          obscureText: false,
        );
      }
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
          validator: controller.editDateCondition,
          hintText: StringRes.dateTextFieldHintText,
          suffixIcon: const Icon(Icons.date_range),
          fillColor: Colors.blueGrey.shade50,
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
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
    child: GetBuilder<EditProfileController>(
      builder: (controller) {
        return textField(
          validator: controller.editEmailCondition,
          hintText: StringRes.emailTextFieldHintText,
          suffixIcon: const Icon(Icons.email,),
          fillColor: Colors.blueGrey.shade50,
          filled: true,
          controller: controller.emailController,
          obscureText: false,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
        );
      }
    ),
  );
}

// Widget countryTextFiled(){
//   return  Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: GetBuilder<EditProfileController>(
//       builder: (controller) {
//         return IntlPhoneField(
//           controller: controller.countryController,
//           validator: (p0) {
//             return controller.countryCondition(p0);
//           },
//           decoration:  InputDecoration(
//            // labelText: 'Phone Number',
//             hintText:StringRes.countryTextFieldHintText ,
//             border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
//             filled: true,
//             fillColor: Colors.blueGrey.shade50,
//             focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(50),
//               borderSide:  const BorderSide(color:ColorRes.blueColor),
//             ),
//             enabledBorder:
//             OutlineInputBorder(borderRadius: BorderRadius.circular(50),
//               borderSide: const BorderSide(color: ColorRes.greyColor),
//             ),
//           ),
//           initialCountryCode: 'IN',
//           onChanged: (phone) {
//             print(phone.completeNumber);
//             //controller.countryCondition(phone);
//           },
//
//         );
//       }
//     ),
//   );
// }
Widget mobileTextFieldSignUp() {
  return GetBuilder<EditProfileController>(
      id: 'NameTextFiled',
      builder: (controller) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: textField(
            controller: controller.mobileController,
            validator: controller.editMobileCondition,
            maxLength: 10,
            hintText: StringRes.mobileTextFieldHintText,
            keyboardType: TextInputType.number,
            suffixIcon: const Icon(IconRes.phoneIcon),
            fillColor: Colors.blueGrey.shade50,
            filled: true,
            obscureText: false,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
          ),
        );
      });
}
// Widget dropDownButton(){
//   return GetBuilder<EditProfileController>(
//     builder: (controller) {
//       return Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Container(
//           height:Get.height*0.07,
//           width: double.infinity,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(40),
//             color: Colors.blueGrey.shade50,
//             border:Border.all(color: ColorRes.greyColor)
//           ),
//           child: DropdownButtonFormField(
//             dropdownColor: ColorRes.scaffoldColor,
//             isExpanded: true,
//             iconSize: 30,
//             iconEnabledColor: ColorRes.greyColor,
//             decoration: const InputDecoration(border: InputBorder.none),
//             value: controller.gender,
//             hint: Padding(
//               padding:  EdgeInsets.only(left: Get.width*0.03),
//               child: commonText(
//                 data: StringRes.genderText,
//                 color: ColorRes.greyColor.shade700,
//               ),
//             ),
//             items: [
//               DropdownMenuItem(
//                 value: 'female',
//                 child: Padding(
//                   padding:  EdgeInsets.only(left: Get.width*0.03),
//                   child: commonText(data:StringRes.femaleGenderText, color: ColorRes.blackColor),
//                 ),
//               ),
//               DropdownMenuItem(
//                 value: 'male',
//                 child: Padding(
//                   padding:  EdgeInsets.only(left: Get.width*0.03),
//                   child: commonText(data: StringRes.maleGenderText, color:ColorRes.blackColor),
//                 ),
//               ),
//               DropdownMenuItem(
//                 value: 'other',
//                 child: Padding(
//                   padding:  EdgeInsets.only(left: Get.width*0.03),
//                   child: commonText(data:StringRes.otherGenderText, color: ColorRes.blackColor),
//                 ),
//               )
//             ],
//             onChanged: controller.dropDownButtonCondition,
//           ),
//         ),
//       );
//     }
//   );
// }

Widget radioButton() {
  return GetBuilder<EditProfileController>(
      id: 'radioButton',
      builder: (controller) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: Get.height * 0.08,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade50,
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                      color: controller.genderError != null
                          ? ColorRes.errorColor
                          : Colors.grey.shade500),
                ),
                child: Row(
                  children: [
                    Radio(
                      value: controller.male,
                      groupValue: controller.group,
                      onChanged: controller.maleRadioButtonCondition,
                    ),
                    const Text("Male"),
                    SizedBox(width: Get.width*0.02,),
                    Radio(
                      value: controller.female,
                      groupValue: controller.group,
                      onChanged: controller.femaleRadioButtonCondition,
                    ),
                    const Text("Female"),
                    Radio(
                      value: controller.other,
                      groupValue: controller.group,
                      onChanged: controller.otherRadioButtonCondition,
                    ),
                    const Text("Other"),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              controller.genderError != null
                  ? Padding(
                    padding:  EdgeInsets.only(left: Get.width*0.04),
                    child: commonText(
                data: controller.genderError ?? "",
                color: ColorRes.errorColor,
                fontSize: 12,
              ),
                  )
                  : const SizedBox(),
            ],
          ),
        );
      });
}

Widget editButton() {
  return GetBuilder<EditProfileController>(builder: (controller) {
    return commonElevatedButton(
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(height * 0.25))),
      onPressed: () => controller.editProfile().then((value) {
        controller.nameController.clear();
        controller.emailController.clear();
        controller.mobileController.clear();
        controller.dateController.clear();
        controller.countryController.clear();
        controller.gender=null;
      }),
      widget: Padding(
        padding: EdgeInsets.only(
          left: width * 0.34,
          right: width * 0.34,
          top: height * 0.02,
          bottom: height * 0.02,
        ),
        child: FittedBox(
          child: commonText(data: StringRes.updateText,color: ColorRes.whiteColor),
        ),
      ),
    );
  });
}