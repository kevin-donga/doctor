import 'dart:io';
import 'package:doctor/screens/login_screen/login_screen.dart';
import 'package:doctor/screens/profile_screen/edit_profile_screen/edit_profile_screen.dart';
import 'package:doctor/services/pref_service.dart';
import 'package:doctor/utils/pref_res.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../services/firebase_services.dart';

class ProfileController extends GetxController {
  String loginUserUniqueKey = '';
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
  String loginString = "";

  @override
  void onInit() {
    loginUserUniqueKey = PrefService.getString(PrefRes.loginUser);
    getLoginUserData();
    super.onInit();
  }

  Future<void> getLoginUserData() async {
    DatabaseReference databaseReference =
        FirebaseDatabase.instance.ref("User/$loginUserUniqueKey");
    Map? data = await FirebaseServices.getData(databaseReference);
    nameController.text = data!['name'];
    mobileController.text = data['mobileNumber'];
    dateController.text = data['date'];
    emailController.text = data['email'];
    gender = data['gender'];
    update(["radioButton"]);
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
    DatabaseReference databaseReference =
        FirebaseDatabase.instance.ref("User/$loginUserUniqueKey");
    genderCondition(group);
    if (formKey.currentState!.validate()) {
      Map<String, dynamic> editData = {
        'name': nameController.text.trim(),
        'email': emailController.text.trim(),
        'date': dateController.text.trim(),
        'mobileNumber': mobileController.text.trim(),
        'gender': gender,
      };
      await FirebaseServices.updateData(databaseReference, editData);
      Get.back();
      update(['EditProfileController']);
    } else {
      Get.snackbar('Edit Profile Error', 'Edit Try Unsuccessful');
    }
    update(['EditProfileController']);
  }

  FirebaseStorage firebaseStorage = FirebaseStorage.instance;
  File? file;
  bool loading = false;

  Future<void> imagePickerWidget() async {
    List images = [];
    ImagePicker imagePicker = ImagePicker();
    XFile? image = await imagePicker.pickImage(source: ImageSource.gallery);
    if (image == null) {
      return;
    }
    file = File(image.path);
    String fileName = image.name;
    File imageFile = File(image.path);
    try {
      loading = true;
      await firebaseStorage.ref(fileName).putFile(imageFile);
      loading = false;
      Get.snackbar('Image Successfully Uploaded', 'Successfully Uploaded');
    } on FirebaseException catch (e) {
      print(e);
    } catch (error) {
      print(error);
    }
    update(['imagePicker']);
  }

  void listviewCondition(int index) {
    switch (index) {
      case 0:
        {
          print('index 1');
          Get.to(() => EditProfileScreen());
        }
        break;

      case 1:
        {
          //Get.to(EditProfileScreen());
        }
        break;

      case 2:
        {
          //  Get.to(EditProfileScreen());
        }
        break;

      case 3:
        {
          // Get.to(EditProfileScreen());
        }
        break;

      case 4:
        {
          // Get.to(EditProfileScreen());
        }
        break;

      case 5:
        {
          //Get.to(EditProfileScreen());
        }
        break;

      case 6:
        {
          // Get.to(EditProfileScreen());
        }
        break;
    }
    update(['Listview']);
  }

  void onLogoutOk() {
    PrefService.setValue(PrefRes.isLogin, false);
    Get.offAll(() => LoginScreen());
  }

  void onLogoutCancel() {
    Get.back();
  }
}
