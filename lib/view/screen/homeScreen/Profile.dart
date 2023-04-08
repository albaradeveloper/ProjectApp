import 'package:cuorse/view/wedgits/onBoardingWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/profile_controller.dart';
import '../../../core/constant/colors.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);

  ProfileController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.primary,
        title: Text('68'.tr),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 20,left: 30,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 140,
                  width: 140,
                  child: CircleAvatar(
                    child: Image.asset("asset/images/boardingthree.png",fit: BoxFit.cover,),
                    backgroundColor: AppColor.lightColor,
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.text,
                        controller: controller.name ,
                        enabled: false,
                        decoration: const InputDecoration(
                            hintText: 'Albara Omer KhalafAllah',
                           suffixIcon: IconButton(
                               icon: Icon(Icons.edit),
                             onPressed: null
                           ),
                            prefixIcon: Icon(Icons.person),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),

                            )

                        ),
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        controller: controller.email ,
                        enabled: false,
                        decoration: const InputDecoration(
                            hintText: 'abraomr445@gmail.com',
                            suffixIcon: IconButton(
                                icon: Icon(Icons.edit),
                                onPressed: null
                            ),
                            prefixIcon: Icon(Icons.email),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),

                            )

                        ),
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        controller: controller.address ,
                        enabled: false,
                        decoration: const InputDecoration(
                            hintText: 'Omdurman',
                            suffixIcon: IconButton(
                                icon: Icon(Icons.edit),
                                onPressed: null
                            ),
                            prefixIcon: Icon(Icons.maps_home_work_outlined),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),

                            )

                        ),
                      ),
                      SizedBox(height: 10,),
                      GetBuilder<ProfileController>(
                          builder: (context) {
                          return TextFormField(
                            keyboardType: TextInputType.text,
                            controller: controller.phone ,
                            enabled: false,
                            decoration: const InputDecoration(
                                hintText: '00249926699368',
                                suffixIcon: IconButton(
                                    icon: Icon(Icons.edit),
                                    onPressed: null
                                ),
                                prefixIcon: Icon(Icons.phone),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),

                                )

                            ),
                          );
                        }
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        controller: controller.password ,
                        enabled: false,
                        decoration: const InputDecoration(
                            hintText: '**********',
                            suffixIcon: IconButton(
                                icon: Icon(Icons.edit),
                                onPressed: null
                            ),
                            prefixIcon: Icon(Icons.password),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),

                            )

                        ),
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child: customButton(
                            text: "Edit Profile ",
                            width: 150,
                            onPress:(){

                            }),
                      )
                      ],
                  ),
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
