import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DevicesController extends GetxController
    with GetSingleTickerProviderStateMixin {
  String? valueChooseCategory;
  String? valueChooseBrand;
  String? valueChooseColor;
  TextEditingController? deviceName;
  TextEditingController? deviceSerial;

  final List<Tab> Tabs = <Tab>[
    Tab(
      icon: Icon(Icons.phone_android),
      text: '34'.tr,
    ),
    Tab(
      icon: Icon(Icons.laptop),
      text: '35'.tr
    ),
    Tab(
      icon: Icon(Icons.camera_alt),
      text: '36'.tr,
    ),
    Tab(
      icon: Icon(Icons.headset_mic_rounded),
      text: '37'.tr,
    ),
  ];
  late TabController controller;

  @override
  void onInit(){
    super.onInit();
    controller = TabController(length: Tabs.length, vsync: this);
  }

  @override
  void onClose(){
    controller.dispose();
    super.onClose();
  }

  List listCategory = [
    '34'.tr,
    '35'.tr,
    '36'.tr,
    '37'.tr,
  ];

  List listBrand = [
    '45'.tr,
    '46'.tr,
    '47'.tr,
    '48'.tr,
    '49'.tr,
  ];
  List listColor = [
    '51'.tr,
    'White'.tr,
    'gray'.tr,
    'blue'.tr,
    'Silver'.tr
  ];

  void changeCategory(value){
    valueChooseCategory = value ;
    update();
  }
  void changeBrand(value){
    valueChooseBrand = value ;
    update();
  }
  void changeColor(value){
    valueChooseColor = value ;
    update();
  }

}
