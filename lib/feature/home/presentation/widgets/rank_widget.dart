import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:score_app/core/themes/assets.dart';
import 'package:score_app/core/themes/colors.dart';

class RankWidgets extends StatelessWidget {
  const RankWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 15.h ,
      right: 30.w,  
      child: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(
            Assets.rankIcon,
            height: 23.h,
            width: 12.w,
          ),
          Text(
            "Rank\nA",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 10.sp,
                fontFamily: "BalooBhaijaan2",
                color: AppColors.white,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
