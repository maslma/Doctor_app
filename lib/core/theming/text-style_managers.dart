import 'package:doctor_app/core/theming/color_managers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyleManager {
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static TextStyle font35BlackBold = TextStyle(
    fontSize: 35.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: ColorManager.primaryColor,
  );
  static TextStyle font13greyRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.normal,
    color: ColorManager.grey,
  );
  static TextStyle font16greySemibold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: ColorManager.white,
  );
}
