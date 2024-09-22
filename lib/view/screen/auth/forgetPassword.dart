import 'package:cuorse/view/wedgits/onBoardingWidget.dart';
import 'package:cuorse/view/wedgits/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/forgetPassword_controller.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({Key? key}) : super(key: key);

  final ForgetPasswordController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.only(top: 100),
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(15),
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Check Email'.tr,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(
                height: 10,
              ),
              Text('Enter Your Email'.tr,
                  style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(
                height: 50,
              ),
              Form(
                key: controller.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textField(
                        controller: controller.email,
                        title: Text(
                          '14'.tr,
                        ),
                        hint: '15'.tr,
                        prefIcon: Icon(Icons.email_outlined),
                        type: TextInputType.emailAddress,
                        validate: (value) {
                          if (value!.isEmpty) {
                            return "Email is Empty";
                          }
                          return null;
                        }),
                    const SizedBox(
                      height: 15,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    customButton(
                        text: 'Check'.tr,
                        width: double.infinity,
                        height: 50,
                        onPress: () {
                          Get.toNamed("/veryCode");
                        })
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
