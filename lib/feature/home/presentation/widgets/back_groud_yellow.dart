import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:score_app/core/themes/colors.dart';

class BackGroudYellow extends StatelessWidget {
  const BackGroudYellow({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 125.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.yellow2,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
