import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordController extends GetxController {

  var formKey = GlobalKey<FormState>();
  TextEditingController? password ;
  TextEditingController? configPassword ;
  bool isPasswordShowOne = true;
  bool isPasswordShowTwo = true;


  void showPasswordOne(){
    isPasswordShowOne =! isPasswordShowOne;
    update();
  }
  void showPasswordTwo(){
    isPasswordShowTwo =! isPasswordShowTwo;
    update();
  }
}


