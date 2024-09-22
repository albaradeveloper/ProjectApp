import 'package:cuorse/controller/home_controller.dart';
import 'package:cuorse/core/constant/colors.dart';
import 'package:cuorse/view/wedgits/onBoardingWidget.dart';
import 'package:cuorse/view/wedgits/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          '33'.tr,
          style: TextStyle(color: AppColor.lightColor),
        ),
        backgroundColor: ColorApp.primary,
        leading: Container(
          padding: EdgeInsets.only(left: 10, top: 10),
          child: CircleAvatar(
            backgroundColor: AppColor.lightColor,
            child: Image.asset("asset/images/boardingthree.png",
                fit: BoxFit.cover),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size(0.0, 120),
          child: Container(
            padding: EdgeInsets.only(bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      "3",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text('34'.tr, style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "1",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text('35'.tr, style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "0",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text('36'.tr, style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "2",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text('37'.tr, style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.defaultDialog(
              backgroundColor: AppColor.lightColor,
              title: '38'.tr,
              textConfirm: '39'.tr,
              textCancel: '40'.tr,
              confirmTextColor: AppColor.lightColor,
              contentPadding: EdgeInsets.all(10),
              onCancel: () {},
              onConfirm: () {},
              content: Container(
                width: double.infinity,
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textField(
                          validate: (validate) {},
                          prefIcon: Icon(Icons.numbers),
                          hint: '41'.tr,
                          controller: controller.serial,
                          type: TextInputType.text,
                          decoration: const InputDecoration()),
                      SizedBox(
                        height: 10,
                      ),
                      textField(
                          validate: (validate) {},
                          prefIcon: Icon(Icons.devices_other),
                          controller: controller.deviceName,
                          hint: '42'.tr,
                          type: TextInputType.text),
                      SizedBox(
                        height: 10,
                      ),
                      GetBuilder<HomeController>(builder: (context) {
                        return DropdownButton(
                          hint: Text('43'.tr),
                          onChanged: controller.changeCategory,
                          value: controller.valueChooseCategory,
                          items: controller.listCategory.map((value) {
                            return DropdownMenuItem(
                                value: value, child: Text(value));
                          }).toList(),
                        );
                      }),
                      SizedBox(
                        height: 10,
                      ),
                      GetBuilder<HomeController>(builder: (context) {
                        return DropdownButton(
                          hint: Text('44'.tr),
                          onChanged: controller.changeBrand,
                          value: controller.valueChooseBrand,
                          items: controller.listBrand.map((value) {
                            return DropdownMenuItem(
                                value: value, child: Text(value));
                          }).toList(),
                        );
                      }),
                      SizedBox(
                        height: 10,
                      ),
                      GetBuilder<HomeController>(builder: (context) {
                        return DropdownButton(
                          hint: Text('50'.tr),
                          onChanged: controller.changeColor,
                          value: controller.valueChooseColor,
                          items: controller.listColor.map((value) {
                            return DropdownMenuItem(
                                value: value, child: Text(value));
                          }).toList(),
                        );
                      }),
                    ],
                  ),
                ),
              ));
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
          child: Container(
              decoration: BoxDecoration(
                  color: AppColor.lightColor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40))),
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
                          textField(
                            validate: (v) {},
                            prefIcon: Icon(Icons.search),
                            hint: '23'.tr,
                            controller: controller.serial,
                            type: TextInputType.text,
                            decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          customButton(
                              width: 170,
                              height: 40,
                              text: '10'.tr,
                              onPress: () {})
                        ],
                      ),
                    ),
                  ],
                ),
              ))),
    );
  }
}
