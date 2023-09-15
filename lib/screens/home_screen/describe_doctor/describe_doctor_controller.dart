import 'package:doctor/services/firebase_services.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

import '../../book_appoinment/book_appointment_screen.dart';

class DescribedDoctorController extends GetxController {
  String? doId;
  Map? doctorData;
  bool isLod = false;

  DescribedDoctorController(this.doId);

  @override
  void onInit() {
    // TODO: implement onInit
    getDoctorData();
    super.onInit();
  }

  Future<void> getDoctorData() async {
    isLod = true;
    DatabaseReference reference = FirebaseDatabase.instance.ref("Admin/$doId");
    doctorData = await FirebaseServices.getData(reference);
    isLod = false;
    update(["Doctor"]);
    print(doctorData);
  }

  void onBookAppointment() {
    doctorData!["id"] = doId;
    Get.to(BookAppointment(
      doctorData: doctorData,
    ));
  }
}
