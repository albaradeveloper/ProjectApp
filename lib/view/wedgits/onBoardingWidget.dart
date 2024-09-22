import 'dart:ui';

import 'package:cuorse/core/constant/colors.dart';
import 'package:flutter/material.dart';

Widget customButtonText(
        {@required Widget? text,
        Color color = AppColor.secondary,
        double size = 18,
        @required void Function()? onPress}) =>
    InkWell(
        onTap: onPress,
        child: text
    );

Widget customButton(
         {Color color = AppColor.lightColor,
        Color? background,
        @required String? text,
        @required void Function()? onPress,
        double height = 30,
        double width = 100}) =>
    SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
          onPressed: onPress,
          style: ElevatedButton.styleFrom(backgroundColor: background),
          child: Text(
            "$text",
            style: TextStyle(color: color),
          )),
    );
