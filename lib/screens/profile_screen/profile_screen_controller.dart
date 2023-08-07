import 'dart:io';
import 'package:doctor/screens/edit_profile_screen/edit_profile_screen.dart';
import 'package:doctor/utils/string_res.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../services/firebase_services.dart';

class ProfileController extends GetxController {
  int index = StringRes.profileList.length;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  File? file;
  List images = [];
  Future<void> imagePickerWidget() async {
    ImagePicker imagePicker=ImagePicker();
    XFile? image= await imagePicker.pickImage(source: ImageSource.gallery);
    file = File(image!.path);
    if(file!=null){
       try{
        final imageUrl = await FebServices.getImage("Image");
        print("========>$imageUrl");
        images.add(imageUrl);
        print("===================>$images");
       }catch(e){
         return null;
       }
    }
    update(['imagePicker']);
  }

  void listviewCondition() {
    switch (index) {
      case 0:
        {
          print('index 1');
          Get.to(const EditProfileScreen());
        }
        break;

      case 1:
        {
          // Get.to(EditProfileScreen());
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
}
