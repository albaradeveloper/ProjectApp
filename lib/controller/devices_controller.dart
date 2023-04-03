import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DevicesController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final List<Tab> Tabs = <Tab>[
    Tab(
      icon: Icon(Icons.phone_android),
      text: "Mobile",
    ),
    Tab(
      icon: Icon(Icons.laptop),
      text: "LapTop",
    ),
    Tab(
      icon: Icon(Icons.camera_alt),
      text: "Camera",
    ),
    Tab(
      icon: Icon(Icons.headset_mic_rounded),
      text: "AitBuds",
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

}
