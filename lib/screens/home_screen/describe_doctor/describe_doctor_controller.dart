import 'package:get/get.dart';

import '../../book_appoinment/book_appointment_screen.dart';

class DescribedDoctorController extends GetxController {
  void onBookAppointment() {
    Get.to(const BookAppointment());
  }
}
