import 'package:cuorse/controller/login_controller.dart';
import 'package:cuorse/controller/onBoarding_controller.dart';
import 'package:cuorse/core/constant/colors.dart';
import 'package:cuorse/view/wedgits/onBoardingWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/dataSource/static/onBoardingData.dart';

class OnBoarding extends GetView<OnBoardingControllerImp> {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
        ),
        body: Column(
          children: [
            Container(
                alignment: AlignmentDirectional.topEnd,
                margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
                child: customButtonText(
                    text:
                        Text('1'.tr, style: Theme.of(context).textTheme.button),
                    onPress: () {
                      Get.offAllNamed("/tentative");
                    })),
            Expanded(
                flex: 1,
                child: PageView.builder(
                    physics: const BouncingScrollPhysics(),
                    controller: controller.pageController,
                    onPageChanged: (value) {
                      controller.onPageChanged(value);
                    },
                    itemCount: onBoardingList.length,
                    itemBuilder: (BuildContext context, int index) => Column(
                          children: [
                            const SizedBox(
                              height: 50,
                            ),
                            Container(
                                margin: const EdgeInsets.all(10),
                                height: 250,
                                width: 250,
                                child:
                                    Image.asset(onBoardingList[index].image!)),
                            const SizedBox(
                              height: 60,
                            ),
                            Text(
                              onBoardingList[index].title!,
                              style: Theme.of(context).textTheme.headline1,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(onBoardingList[index].content!,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyText1)
                          ],
                        ))),
            Container(
              margin: const EdgeInsets.only(bottom: 20, left: 30, right: 30),
              child: GetBuilder<OnBoardingControllerImp>(builder: (context) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customButton(
                        text: '2'.tr,
                        onPress: () {
                          controller.next();
                        }),
                    Row(children: [
                      ...List.generate(
                          onBoardingList.length,
                          (index) => AnimatedContainer(
                                margin: const EdgeInsets.only(left: 5),
                                duration: const Duration(milliseconds: 100),
                                width: controller.currentPage == index ? 20 : 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  color:  AppColor.primary,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              )),
                    ]),
                    //  const SizedBox(width: 200),
                  ],
                );
              }),
            ),
          ],
        ));
  }
}
