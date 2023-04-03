import 'package:cuorse/controller/addDevice_controller.dart';
import 'package:cuorse/controller/devices_controller.dart';
import 'package:cuorse/controller/master_controller.dart';
import 'package:cuorse/controller/profile_controller.dart';
import 'package:cuorse/controller/settings_controller.dart';
import 'package:get/get.dart';
import '../controller/home_controller.dart';

class MasterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MasterController(), fenix: true);
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => DevicesController(), fenix: true);
    Get.lazyPut(() => ProfileController(), fenix: true);
    Get.lazyPut(() => SettingsController(), fenix: true);
    Get.lazyPut(() => AddDeviceController(), fenix: true);


  }
}