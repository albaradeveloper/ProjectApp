import 'package:cuorse/bindings/auth_binding.dart';
import 'package:cuorse/bindings/home_binding.dart';
import 'package:cuorse/bindings/masterBinding.dart';
import 'package:cuorse/core/constant/appTheme.dart';
import 'package:cuorse/core/localization/changelocal.dart';
import 'package:cuorse/core/localization/translation.dart';
import 'package:cuorse/core/services/services.dart';
import 'package:cuorse/middelwier/auth_middelwier.dart';
import 'package:cuorse/view/screen/auth/forgetPassword.dart';
import 'package:cuorse/view/screen/auth/resetPassword.dart';
import 'package:cuorse/view/screen/auth/veryCode.dart';
import 'package:cuorse/view/screen/master.dart';
import 'package:cuorse/view/screen/login.dart';
import 'package:cuorse/view/screen/onBoarding.dart';
import 'package:cuorse/view/screen/signUp/signUp.dart';
import 'package:cuorse/view/screen/tentative.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'core/constant/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(seconds: 1));
  FlutterNativeSplash.remove();
  await initialServices();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  LocalController controller = Get.put(LocalController());


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: MyTranslation(),
      locale: controller.language,
      title: 'OwnerDevice',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      initialBinding: HomeBindig(),
      initialRoute: "/onBoarding",
      getPages: [
        GetPage(name: "/onBoarding", page: () => const OnBoarding()),
        GetPage(name: "/tentative", page: () =>  Tentative()),
        GetPage(name: "/login", page: () => LognIn(),binding: AuthBinding()),
        GetPage(name: "/signup", page: () => SignUp(),binding: AuthBinding()),
        GetPage(name: "/home", page: () =>  MasterScreen(),binding: MasterBinding()),
        GetPage(name: "/forgetPassword", page: () =>  ForgetPassword(),binding: AuthBinding()),
        GetPage(name: "/veryCode", page: () =>  VeryCode(),binding: AuthBinding()),
        GetPage(name: "/resetPassword", page: () =>  ResetPassword(),binding: AuthBinding()),
      ],
    );
  }
}
