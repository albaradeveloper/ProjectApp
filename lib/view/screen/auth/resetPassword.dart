import 'package:cuorse/controller/auth/resetPassword_controller.dart';
import 'package:cuorse/view/wedgits/onBoardingWidget.dart';
import 'package:cuorse/view/wedgits/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class ResetPassword extends StatelessWidget {
  ResetPassword({Key? key}) : super(key: key);

  final ResetPasswordController controller = Get.find();

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
                    'Reset Password'.tr,
                    style: Theme.of(context).textTheme.headline1,
                  ),


                  const SizedBox(
                    height: 60,
                  ),
                  Form(
                    key: controller.formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GetBuilder<ResetPasswordController>(
                          builder: (controller) => textField(
                              controller: controller.password,
                              hint: 'Password'.tr,
                              prefIcon: Icon(Icons.lock_outline),
                              sufIcon: controller.isPasswordShowOne
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              isPassword: controller.isPasswordShowOne,
                              visibility: () {
                                controller.showPasswordOne();
                              },
                              type: TextInputType.visiblePassword,
                              validate: (value) {
                                if (value!.isEmpty) {
                                  return "password is Empty";
                                }
                                return null;
                              }),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GetBuilder<ResetPasswordController>(
                          builder: (controller) => textField(
                              controller: controller.configPassword,
                              hint: 'Config Password'.tr,
                              prefIcon: Icon(Icons.lock_outline),
                              sufIcon: controller.isPasswordShowTwo
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              isPassword: controller.isPasswordShowTwo,
                              visibility: () {
                                controller.showPasswordTwo();
                              },
                              type: TextInputType.visiblePassword,
                              validate: (value) {
                                if (value!.isEmpty) {
                                  return "password is Empty";
                                }
                                return null;
                              }),
                        ),

                        const SizedBox(
                          height: 20,
                        ),
                        customButton(
                            text: 'Reset Password'.tr,
                            width: double.infinity,
                            height: 50,
                            onPress: () {
                              Get.offAllNamed("/home");
                            }
                        )



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
