import 'package:cuorse/controller/signup_controller.dart';
import 'package:cuorse/core/constant/colors.dart';
import 'package:cuorse/data/dataSource/static/onBoardingData.dart';
import 'package:cuorse/view/wedgits/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../controller/login_controller.dart';
import '../../wedgits/onBoardingWidget.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  final SignUpController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Obx(
        () =>
            Stepper(
            type: StepperType.vertical,
            currentStep: controller.currentStep.value,
            elevation: 0,
            onStepContinue: () {
              controller.currentStep.value++;
              if(controller.currentStep.value > 4 ){
                Get.toNamed("/tentative");
                controller.currentStep.value = 0;
                Get.showSnackbar(
                    GetSnackBar(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.all(10),
                      title: '12'.tr,
                      message: 'Create Account Seccessfully'.tr,
                      borderRadius: 7,
                      icon: Icon(Icons.done),
                      duration: Duration(
                          seconds: 2
                      ),

                    ));
              }
            },
            onStepCancel: () {
              controller.currentStep.value == 0 ? null : controller.currentStep--;
            },
            steps: [
              Step(
                  state: controller.currentStep.value > 0
                      ? StepState.complete
                      : controller.currentStep.value == 0
                          ? StepState.editing
                          : StepState.indexed,
                  title: Text('14'.tr),
                  content: textField(
                      controller: controller.email,
                      title: Text(
                        '14'.tr,
                        style: Theme.of(context).textTheme.bodyText1,
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
                  isActive: controller.currentStep.value >= 0),
              Step(
                  state: controller.currentStep.value > 1
                      ? StepState.complete
                      : controller.currentStep.value == 1
                          ? StepState.editing
                          : StepState.indexed,
                  title: Text('22'.tr),
                  content: Form(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "OTP Code :",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 68,
                            width: 64,
                            child: TextField(
                              style: Theme.of(context).textTheme.headline6,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(),
                                      borderRadius: BorderRadius.circular(15))),
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 68,
                            width: 64,
                            child: TextField(
                              style: Theme.of(context).textTheme.headline6,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(),
                                      borderRadius: BorderRadius.circular(15))),
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 68,
                            width: 64,
                            child: TextField(
                              style: Theme.of(context).textTheme.headline6,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(),
                                      borderRadius: BorderRadius.circular(15))),
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 68,
                            width: 64,
                            child: TextField(
                              style: Theme.of(context).textTheme.headline6,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(),
                                      borderRadius: BorderRadius.circular(15))),
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
                  isActive: controller.currentStep.value >= 1),
              Step(
                  state: controller.currentStep.value > 2
                      ? StepState.complete
                      : controller.currentStep.value == 2
                          ? StepState.editing
                          : StepState.indexed,
                  title: Text('Address'.tr),
                  content: Form(
                    child: Column(
                      children: [
                        textField(
                            controller: controller.email,
                            // title: Text('Address'.tr, style: Theme.of(context).textTheme.bodyText1,),
                            hint: 'address'.tr,
                            prefIcon: Icon(Icons.maps_home_work),
                            type: TextInputType.emailAddress,
                            validate: (value) {
                              if (value!.isEmpty) {
                                return "Email is Empty";
                              }
                              return null;
                            }),
                        textField(
                            controller: controller.email,
                            // title: Text('16'.tr, style: Theme.of(context).textTheme.bodyText1,),
                            hint: '0249000000000'.tr,
                            prefIcon: Icon(Icons.phone),
                            type: TextInputType.emailAddress,
                            validate: (value) {
                              if (value!.isEmpty) {
                                return "Email is Empty";
                              }
                              return null;
                            }),
                      ],
                    ),
                  ),
                  isActive: controller.currentStep.value >= 2),
              Step(
                  state: controller.currentStep.value > 3
                      ? StepState.complete
                      : controller.currentStep.value == 3
                          ? StepState.editing
                          : StepState.indexed,
                  title: Text('Image'.tr),
                  content: Column(
                    children: [
                      Text(
                        "Choose Your Image Profile :",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        child: Stack(fit: StackFit.expand, children: [
                          CircleAvatar(
                            child: Icon(
                              Icons.person_outlined,
                              color: AppColor.lightColor,
                              size: 60,
                            ),
                            backgroundColor: AppColor.gray,
                          ),
                          Positioned(
                            bottom: 3,

                              child: IconButton(
                                  onPressed: () {}, icon: Icon(Icons.edit,color: AppColor.primary,size: 40,)))
                        ]),
                      )
                    ],
                  ),
                  isActive: controller.currentStep.value >= 3),
              Step(
                  state: controller.currentStep.value > 4
                      ? StepState.complete
                      : controller.currentStep.value == 4
                      ? StepState.editing
                      : StepState.indexed,
                  title: Text('Password'.tr),
                  content:   Form(
                    key: controller.formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GetBuilder<LoginController>(
                          builder: (controller) => textField(
                              controller: controller.password,
                              //title: Text('16'.tr,),
                              hint: 'Password'.tr,
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
                          height: 15,
                        ),
                        GetBuilder<LoginController>(
                          builder: (controller) => textField(
                              controller: controller.password,
                            //  title: Text('16'.tr,),
                              hint: 'Confirm Password'.tr,
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
                      ],
                    ),
                  ),
                  isActive: controller.currentStep.value >= 4),

            ],
        ),
      ),
    );
  }
}
