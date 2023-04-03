import 'package:cuorse/controller/addDevice_controller.dart';
import 'package:cuorse/controller/devices_controller.dart';
import 'package:cuorse/core/constant/colors.dart';
import 'package:cuorse/data/dataSource/static/devicesData.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../wedgits/widgets.dart';

class Devices extends StatelessWidget {
   Devices({Key? key}) : super(key: key);
  final DevicesController controller = Get.find();
   final AddDeviceController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorApp.primary,
        title: Text("My Device"),
        leading: Container(
          padding: EdgeInsets.all(8),
          child: CircleAvatar(
            backgroundColor: AppColor.lightColor,
            child: Image.asset("asset/images/boardingthree.png",fit: BoxFit.cover),
          ),
        ),
        bottom: TabBar(
          indicatorWeight: 4,
          labelColor: AppColor.lightColor,
          tabs: controller.Tabs,
          controller: controller.controller,

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
                                onChanged: c.changeCategory,
                                value: c.valueChooseCategory ,
                                items: c.listCategory.map((value) {
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
                                onChanged: c.changeBrand,
                                value: c.valueChooseBrand ,
                                items: c.listBrand.map((value) {
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
                                onChanged: c.changeColor,
                                value: c.valueChooseColor ,
                                items: c.listColor.map((value) {
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
      body: TabBarView(
        controller: controller.controller,
        children: controller.Tabs.map((Tab tab) {
          return ListView.separated(
              padding: EdgeInsets.all(10),
                itemBuilder: (BuildContext,index){
                  return Container(
                    color: Colors.white,
                    child: ListTile(
                      title: Text("${devicesList[index].name}",style : Theme.of(context).textTheme.headline1 ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("${devicesList[index].serialNo}",style: TextStyle(fontSize: 15),),
                          Text("${devicesList[index].brand}",style: TextStyle(fontSize: 15),),
                          Text("${devicesList[index].color}",style: TextStyle(fontSize: 15),),
                          Text("${devicesList[index].status}", style: TextStyle(color: devicesList[index].status == 'Find' ? Colors.green : AppColor.dangars, fontSize: 15, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      trailing: Container(
                        height: 20,
                        width: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.edit,color: Colors.green,),
                            Icon(Icons.luggage,color: AppColor.dangars,),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index)  => Divider(
                  height: 15,
                  endIndent:20,
                  indent: 20,

                ),
                itemCount: devicesList.length

          );
      }
         ).toList()
        )

    );
  }
}
