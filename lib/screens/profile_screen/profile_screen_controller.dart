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
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();

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
    update();
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
