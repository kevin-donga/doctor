import 'package:doctor/screens/book_appoinment/book_appointment_screen.dart';
import 'package:get/get.dart';

class MyAppointmentController extends GetxController{

  void containerOnTap(){
    Get.to(const BookAppointment());
  }
}