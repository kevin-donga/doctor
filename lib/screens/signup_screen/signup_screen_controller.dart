import 'package:doctor/screens/login_screen/login_screen.dart';
import 'package:get/get.dart';


class SignupScreenController extends GetxController {
  bool visiBal = true;
  String male = "Male";
  String female = "Female";
  String other = "Other";
  String group = "Gender";

  void radioButtonCondition(val){
        group = val.toString();
        update(['radioButton']);
  }
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
