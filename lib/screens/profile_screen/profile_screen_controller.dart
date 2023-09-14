import 'dart:io';
import 'package:doctor/screens/login_screen/login_screen.dart';
import 'package:doctor/screens/profile_screen/edit_profile_screen/edit_profile_screen.dart';
import 'package:doctor/utils/string_res.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../../services/firebase_services.dart';

class ProfileController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  FirebaseStorage firebaseStorage = FirebaseStorage.instance;
  File? file;
  bool loading = false;

  Future<void> imagePickerWidget() async {
    List images = [];
    ImagePicker imagePicker = ImagePicker();
    XFile? image = await imagePicker.pickImage(source: ImageSource.gallery);
    file = File(image!.path);

    if (image == null) {
      return;
    }
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
          Get.to(EditProfileScreen());
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
    Get.offAll(() => LoginScreen());
  }

  void onLogoutCancel() {
    Get.back();
  }
}
