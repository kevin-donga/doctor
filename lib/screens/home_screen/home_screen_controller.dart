import 'package:get/get_state_manager/get_state_manager.dart';

import '../../utils/asset_res.dart';

class HomeScreenController extends GetxController {
  List topDoctorTab = ['All', 'General', 'Dentist', 'Nutrition'];
  List<Map> topDoctors = [
    {
      'photo': AssetRes.drManuBora,
      'name': 'Dr. Manu Bora',
      'qualification': 'Dentist Specialist'
    },
    {
      'photo': AssetRes.drSumitAgarwal,
      'name': 'Dr. Sumit Agarwal',
      'qualification': 'Medicine Specialist'
    },
    {
      'photo': AssetRes.drAnanyaVatiya,
      'name': 'Dr. Ananya Vatiya',
      'qualification': 'General Doctor'
    },
    {
      'photo': AssetRes.drManmeet,
      'name': 'Dr. Manmeet',
      'qualification': 'Neuro Specialist'
    },
    {
      'photo': AssetRes.drPravinShah,
      'name': 'Dr. Pravin Shah',
      'qualification': 'Dentist Specialist'
    },
    {
      'photo': AssetRes.drPritiDesai,
      'name': 'Dr. Priti Desai',
      'qualification': 'Heart Specialist'
    },
    {
      'photo': AssetRes.drShrutiPatel,
      'name': 'Dr. Shruti Patel',
      'qualification': 'Brain Specialist'
    },
    {
      'photo': AssetRes.drYagneshSharma,
      'name': 'Dr. Yagnesh Sharma',
      'qualification': 'Dentist Specialist'
    },
  ];
  bool topDoctorTabDecoration = false;
}
