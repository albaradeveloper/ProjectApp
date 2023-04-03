import 'package:cuorse/controller/addDevice_controller.dart';
import 'package:cuorse/core/constant/appTheme.dart';
import 'package:cuorse/core/constant/colors.dart';
import 'package:cuorse/view/wedgits/onBoardingWidget.dart';
import 'package:cuorse/view/wedgits/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/dialog/dialog_route.dart';

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);
  
  AddDeviceController controller = Get.put(AddDeviceController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Albara omer Khalaf Allah",
          style: TextStyle(
            color: AppColor.lightColor
          ),
        ),
        backgroundColor: ColorApp.primary,
        leading: Container(
          padding: EdgeInsets.only(left: 10,top: 10),
          child: CircleAvatar(
            backgroundColor: AppColor.lightColor,
            child: Image.asset("asset/images/boardingthree.png",fit: BoxFit.cover),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size(0.0, 120),
          child:  Container(
            padding: EdgeInsets.only(bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text("3",style: Theme.of(context).textTheme.headline4,),
                    Text("Mobile",style: Theme.of(context).textTheme.bodyText1),

                  ],
                ),
                Column(
                  children: [
                    Text("1",style: Theme.of(context).textTheme.headline4,),
                    Text("LabTop",style: Theme.of(context).textTheme.bodyText1),

                  ],
                ),
                Column(
                  children: [
                    Text("0",style: Theme.of(context).textTheme.headline4,),
                    Text("Camera",style: Theme.of(context).textTheme.bodyText1),

                  ],
                ),
                Column(
                  children: [
                    Text("2",style: Theme.of(context).textTheme.headline4,),
                    Text("AirBut",style: Theme.of(context).textTheme.bodyText1),

                  ],
                ),
              ],
            ),
          ) ,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.defaultDialog(
            backgroundColor: AppColor.lightColor,
            title: "Add Device",
            textConfirm: 'Add'.tr,
            textCancel: 'Cancel'.tr,
            confirmTextColor: AppColor.lightColor,
            contentPadding: EdgeInsets.all(10),
            onCancel: (){

            },
              onConfirm: (){},
            content: Container(
              width: double.infinity,
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textField(
                        validate: (validate){},
                        prefIcon: Icon(Icons.numbers),
                        hint: 'Serial Number',
                        // controller: controller,
                        type: TextInputType.text
                    ),
                    SizedBox(height: 10,),
                    textField(
                        validate: (validate){},
                        prefIcon: Icon(Icons.devices_other),
                        hint: 'Device Name',
                        // controller: controller,
                        type: TextInputType.text
                    ),
                    SizedBox(height: 10,),
                    GetBuilder<AddDeviceController>(
                        builder: (context) {
                          return DropdownButton(
                            hint: Text('Select Category'),
                            onChanged: controller.changeCategory,
                            value: controller.valueChooseCategory ,
                            items: controller.listCategory.map((value) {
                              return DropdownMenuItem(
                                  value: value,
                                  child: Text(value)
                              );
                            }).toList() ,
                          );
                        }
                    ),
                    SizedBox(height: 10,),
                    GetBuilder<AddDeviceController>(
                        builder: (context) {
                          return DropdownButton(
                            hint: Text('Select Brand'),
                            onChanged: controller.changeBrand,
                            value: controller.valueChooseBrand ,
                            items: controller.listBrand.map((value) {
                              return DropdownMenuItem(
                                  value: value,
                                  child: Text(value)
                              );
                            }).toList() ,
                          );
                        }
                    ),
                    SizedBox(height: 10,),
                    GetBuilder<AddDeviceController>(
                        builder: (context) {
                          return DropdownButton(
                            hint: Text('SelectColor'),
                            onChanged: controller.changeColor,
                            value: controller.valueChooseColor ,
                            items: controller.listColor.map((value) {
                              return DropdownMenuItem(
                                  value: value,
                                  child: Text(value)
                              );
                            }).toList() ,
                          );
                        }
                    ),

                  ],
                ),
              ),
            )

          );
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              color: AppColor.lightColor,
              borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40))
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          hintText: 'Enter Your Serial Number',
                          prefixIcon: Icon(Icons.search),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),

                          )

                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      customButton(
                        width: 170,
                          height: 40,
                          text: '10'.tr,
                          onPress: (){}
                      )
                    ],
                  ),
                ),

              ],
            ),
          )
        )
        ),
    );
  }
}
