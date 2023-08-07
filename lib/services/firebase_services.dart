

import 'dart:io';

import 'package:doctor/screens/profile_screen/profile_screen_controller.dart';
import 'package:doctor/utils/string_res.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

class FebServices{
   static String networkUrl = "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.kauveryhospital.com%2Fdoctors%2Ftirunelveli&psig=AOvVaw1BKxoqSltKXU75OGAOlp-h&ust=1691490318695000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCPDpvbKzyoADFQAAAAAdAAAAABAE";
  static Future<String?> getImage (String? imageName)async{

    ProfileController controller  = Get.find<ProfileController>();
    if(imageName == null){
      return null;
    }else{
      try{
        Reference firebaseStrogae  = FirebaseStorage.instance.ref();
         var ref =firebaseStrogae.child('images/$imageName');
         var image = await ref.putFile(controller.file as File);
         networkUrl = await image.ref.getDownloadURL();
      }catch(e){
        return null;
      }
    }

  }
}