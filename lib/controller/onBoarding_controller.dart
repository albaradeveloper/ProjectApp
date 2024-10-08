import 'package:cuorse/data/dataSource/static/onBoardingData.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
 next();
 onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currentPage = 0;


  @override
  next() {
    currentPage++;

    if(currentPage > onBoardingList.length - 1){
      Get.offAllNamed("/tentative");
    }
    pageController.animateToPage(currentPage, duration: const Duration(microseconds: 200), curve: Curves.ease);
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
    
  }

  @override
  void onInit() {

    pageController = PageController();
    super.onInit();
  }


}

