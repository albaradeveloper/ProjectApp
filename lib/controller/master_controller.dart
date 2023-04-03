import 'package:get/get.dart';


class MasterController extends GetxController {
   int currentIndex = 0;
  void changeTapIndex(int index){
    currentIndex = index;
    update();
  }

  }
