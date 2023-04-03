import 'package:cuorse/controller/master_controller.dart';
import 'package:cuorse/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'homeScreen/Devices.dart';
import 'homeScreen/Home.dart';
import 'homeScreen/Profile.dart';
import 'homeScreen/Settings.dart';

class MasterScreen extends StatelessWidget {
  MasterScreen({Key? key}) : super(key: key);
  final MasterController controller = Get.put(MasterController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MasterController>(
        builder: (controller){
          return  Scaffold(
            bottomNavigationBar: SalomonBottomBar(
                    currentIndex: controller.currentIndex ,
                    unselectedItemColor: AppColor.gray,
                    onTap:controller.changeTapIndex,
                    items: [

                      SalomonBottomBarItem(
                        icon: Icon(Icons.home),
                        title: Text("Home"),
                        // selectedColor: Colors.purple,
                      ),

                      SalomonBottomBarItem(
                        icon: Icon(Icons.devices_other),
                        title: Text("Devices"),
                        // selectedColor: Colors.pink,
                      ),

                      SalomonBottomBarItem(
                        icon: Icon(Icons.person),
                        title: Text("Profile"),
                        // selectedColor: Colors.orange,
                      ),

                      /// Profile
                      SalomonBottomBarItem(
                        icon: Icon(Icons.settings),
                        title: Text("Settings"),
                        // selectedColor: Colors.teal,
                      ),
                    ],
                  ),

            body: IndexedStack(
              index: controller.currentIndex,
              children: [
                Home(),
                Devices(),
                Profile(),
                Settings()
              ],
            ),
          );
        }
    );


  }
}
