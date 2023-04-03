import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
 
 var formKey = GlobalKey<FormState>();
  TextEditingController? email ;
  TextEditingController? password ;
  bool ispasswordShow = true;
  
 
 
  void showPassord(){
    ispasswordShow =! ispasswordShow;
    update();
  }
}


