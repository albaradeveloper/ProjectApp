import 'package:cuorse/core/constant/colors.dart';
import 'package:cuorse/view/wedgits/onBoardingWidget.dart';
import 'package:cuorse/view/wedgits/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tentative extends StatelessWidget {
   Tentative({Key? key}) : super(key: key);
  TextEditingController? detect;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('9'.tr,style: TextStyle(color: AppColor.primary),),
        leading: IconButton(
          onPressed: (){
            Get.toNamed("/login");
          },
          icon: Icon(Icons.more_vert),
        ),

      ),
      body: Container(
        margin: const EdgeInsets.only(left: 10 , top: 20,right: 10),
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            textField(
                hint: 'search'.tr,
                validate: (val){} ,
                prefIcon: Icon(Icons.search),
                controller: detect,
                type: TextInputType.text
            ),
            const SizedBox(
              height: 15,
            ),
            customButton(
                text: '10'.tr,
                width: 200 ,
                onPress: (){}
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(

                child: Column(
                  children: [
                    Container(
                      height: 140,
                      width: 140,
                      child: CircleAvatar(
                        child: Icon(
                          Icons.person_outlined,
                          color: AppColor.lightColor,
                          size: 60,
                        ),
                        backgroundColor: AppColor.gray,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      color: AppColor.primary,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("المـالك ",textAlign: TextAlign.start,style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                color: AppColor.lightColor
                                ),
                              ),
                              Text("البراء عمر خلف الله ",textAlign: TextAlign.start,style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.lightColor
                              ),),

                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("اسم الجهاز ", textAlign: TextAlign.start, style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.lightColor
                              ),
                              ),
                              Text("Galaxy A12 ",textAlign: TextAlign.start,style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.lightColor
                              ),),

                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("الفئة ",textAlign: TextAlign.start,style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.lightColor
                              ),
                              ),
                              Text("هاتف ذكي ",textAlign: TextAlign.start,style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.lightColor
                              ),),

                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("اللون ",textAlign: TextAlign.start,style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.lightColor
                              ),
                              ),
                              Text("ابيض ",textAlign: TextAlign.start,style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.lightColor
                              ),),

                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("العنوان ",textAlign: TextAlign.start,style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.lightColor
                              ),
                              ),
                              Text("امدرمان ",textAlign: TextAlign.start,style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.lightColor
                              ),),

                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("رقم الهاتف ",textAlign: TextAlign.start,style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.lightColor
                              ),
                              ),
                              Text("0926699368 ",textAlign: TextAlign.start,style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.lightColor
                              ),),

                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),



          ],
        ),
      ),
    );
  }
}
