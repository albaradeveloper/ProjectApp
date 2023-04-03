import 'package:cuorse/controller/login_controller.dart';
import 'package:cuorse/controller/onBoarding_controller.dart';
import 'package:cuorse/controller/signup_controller.dart';
import 'package:get/get.dart';

class HomeBindig implements Bindings {
  @override
  void dependencies() {
     Get.lazyPut(() => OnBoardingControllerImp(),fenix: true);
     Get.lazyPut(() => LoginController(), fenix: true);
     Get.lazyPut(() => SignUpController(), fenix: true);
  }

}