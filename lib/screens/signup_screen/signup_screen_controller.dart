import 'package:doctor/screens/login_screen/login_screen.dart';
import 'package:get/get.dart';


class SignupScreenController extends GetxController {
  bool visiBal = true;

  void passSuFix() {
    visiBal = !visiBal;
    update(['LoginController']);
  }

  void alreadydUserTextSignUp() {
    Get.to(const LoginScreen());
  }
  void signUpButton(){
      Get.to(const LoginScreen());
  }
}
