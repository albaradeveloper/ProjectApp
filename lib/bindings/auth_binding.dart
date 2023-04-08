import 'package:cuorse/controller/auth/forgetPassword_controller.dart';
import 'package:cuorse/controller/auth/resetPassword_controller.dart';
import 'package:cuorse/controller/auth/veryCode_controller.dart';
import 'package:cuorse/controller/login_controller.dart';
import 'package:cuorse/controller/signup_controller.dart';
import 'package:get/get.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController(), fenix: true);
    Get.lazyPut(() => SignUpController(), fenix: true);
    Get.lazyPut(() => ForgetPasswordController(), fenix: true);
    Get.lazyPut(() => VeryCodeController(), fenix: true);
    Get.lazyPut(() => ResetPasswordController(), fenix: true);
  }

}