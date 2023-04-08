import 'package:cuorse/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget textField({
  double width = double.infinity,
  Color background = AppColor.secondary,
  Widget? title,
  String? hint,
  @required String? Function(String? value)? validate,
  @required Widget? prefIcon,
  @required TextEditingController? controller,
  IconData? sufIcon,
  void Function()? visibility,
  @required TextInputType? type,
  double radius = 8.0,
  bool isPassword = false,
  InputDecoration? decoration,
}) =>
    TextFormField(
      controller: controller,
      validator: validate,
      keyboardType: type,
      obscureText: isPassword,
      decoration: InputDecoration(
        prefixIcon: prefIcon,
        suffixIcon: IconButton(onPressed: visibility, icon: Icon(sufIcon),),
        hintText: hint,
      // hintStyle: Theme.of(context).textTheme.labelMedium,
       // filled: true,
       // fillColor: AppColor.textfilde,
        label: title,


      ),
    );
