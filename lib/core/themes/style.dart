import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:score_app/core/themes/colors.dart';

class AppStyle {
  static final TextStyle textbold18 = TextStyle(
    fontSize: 18.sp,
    fontFamily: "BalooBhaijaan2",
    color: AppColors.black,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle text18 = TextStyle(
    fontSize: 18.sp,
    fontFamily: "BalooBhaijaan2",
    color: AppColors.black,
  );
  static final TextStyle text9 = TextStyle(
      fontSize: 9.sp,
      fontFamily: "BalooBhaijaan2",
      color: AppColors.black,
      fontWeight: FontWeight.bold);

  static final TextStyle text39 = TextStyle(
      fontSize: 39.sp,
      fontFamily: "BalooBhaijaan2",
      color: AppColors.green2,
      fontWeight: FontWeight.bold 
      );
  static final TextStyle text10 = TextStyle(
      fontSize: 10.sp,
      fontFamily: "BalooBhaijaan2",
      color: AppColors.white,
      fontWeight: FontWeight.bold 
      );

        static final TextStyle text16Yellow=
        TextStyle(
    fontSize:16.sp,
      fontFamily: "BalooBhaijaan2",
      color: AppColors.yellow2,
      fontWeight: FontWeight.w900 
      );

       static const TextStyle text24Yellow=
        TextStyle(
    fontSize:30,
      fontFamily: "BalooBhaijaan2",
      color: AppColors.yellow2,
      fontWeight: FontWeight.w900 
      );
        static const TextStyle text20green=
       TextStyle(
      fontSize: 20,
      fontFamily: "BalooBhaijaan2",
      color: AppColors.green1,
      fontWeight: FontWeight.bold 
      );
}
