import 'package:cuorse/data/dataSource/static/onBoardingData.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class SignUpController extends GetxController {
  var formKey = GlobalKey<FormState>();
  TextEditingController? email ;
  TextEditingController? firstName ;
  TextEditingController? middelName ;
  TextEditingController? lastName ;
  TextEditingController? address ;
  TextEditingController? phone ;
  TextEditingController? password ;
  TextEditingController? configPassword ;

  var currentStep = 0.obs;

}