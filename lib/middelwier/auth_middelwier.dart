
import 'package:cuorse/core/localization/changelocal.dart';
import 'package:cuorse/core/services/services.dart';
import 'package:cuorse/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthMiddleware extends GetMiddleware{
   MyServices controller = Get.put(MyServices());
  @override
  RouteSettings? redirect(String? route){
    if(controller.sharedPreferences!.getString("id") != null) return const RouteSettings(name : "/home");
    return null;
}
}