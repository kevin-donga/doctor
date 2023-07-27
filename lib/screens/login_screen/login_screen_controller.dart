import 'package:doctor/screens/bottom_navbar/bottom_navbar.dart';
import 'package:doctor/screens/forget_password/forget_password.dart';
import 'package:doctor/screens/signup_screen/signup_screen.dart';
import 'package:get/get.dart';
import '../home_screen/home_screen.dart';

class LoginController extends GetxController {
  bool visiBal = true;

  void passSuFix() {
    visiBal = !visiBal;
    update(['LoginController']);
  }

  void loginButton() {
    Get.to(const BottomNavBar(),);
  }
  void forgetPassText(){
    Get.to(const ForgetPasswordScreen());
  }
  void newUserTextLogin(){
    Get.to(const SignupScreen());
  }
}
