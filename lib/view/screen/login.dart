import 'package:cuorse/core/constant/colors.dart';
import 'package:cuorse/view/wedgits/onBoardingWidget.dart';
import 'package:cuorse/view/wedgits/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/login_controller.dart';

class LognIn extends StatelessWidget {
  LognIn({Key? key}) : super(key: key);

  final LoginController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(15),
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '13'.tr,
              style: Theme.of(context).textTheme.headline1,
            ),
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
                      title: Text('14'.tr, ),
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
                  GetBuilder<LoginController>(
                    builder: (controller) => textField(
                        controller: controller.password,
                        title: Text('16'.tr,),
                        hint: '17'.tr,
                        prefIcon: Icon(Icons.lock_outline),
                        sufIcon: controller.ispasswordShow
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        isPassword: controller.ispasswordShow,
                        visibility: () {
                          controller.showPassord();
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
                  customButtonText(
                      text: Text('18'.tr,style: Theme.of(context).textTheme.headline5,), size: 15, onPress: () {}),
                  const SizedBox(
                    height: 20,
                  ),
                  customButton(
                    text: '19'.tr,
                    width: double.infinity,
                    height: 50,
                    onPress: () {
                      if (controller.formKey.currentState!.validate()) {
                        Get.offAllNamed('/home');
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('21'.tr,
                          style: Theme.of(context).textTheme.bodyText1),
                      customButtonText(
                          text: Text(
                            '20'.tr,
                            style: Theme.of(context).textTheme.button,
                          ),
                          onPress: () {
                            Get.toNamed("/signup");
                          })
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
