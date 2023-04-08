import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
   TextEditingController? serial;
   String? valueChooseCategory;
   String? valueChooseBrand;
   String? valueChooseColor;

   TextEditingController? deviceName;
   TextEditingController? deviceSerial;



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