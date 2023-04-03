import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddDeviceController extends GetxController {

  String? valueChooseCategory;
  String? valueChooseBrand;
  String? valueChooseColor;

  TextEditingController? serial;
  TextEditingController? device;


  List listCategory = [
    'Mobile'.tr,
    'LabTop'.tr,
    'Camera'.tr,
    'AirBut'.tr,
  ];

  List listBrand = [
    'Samsung'.tr,
    'Huwoui'.tr,
    'Apple'.tr,
    'Nokia'.tr,
    'Realme'.tr,
  ];
  List listColor = [
    'Black'.tr,
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