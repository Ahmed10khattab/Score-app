
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:score_app/core/themes/assets.dart';
import 'package:score_app/core/themes/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text,required this.color ,required this.onPressed});
  final String text;
  final Color color ;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 36.w),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: onPressed,
        color: color,
        height: 30.h,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 15.h,
                  width: 15.w,
                  child: SvgPicture.asset(
                    Assets.tennis,
                    color: AppColors.black,
                  )),
              SizedBox(
                width: 15.w,
              ),
              Text(
                text,
                style: TextStyle(
                    fontSize: 17.sp,
                    color: Colors.black,
                    fontFamily: "BalooBhaijaan2",
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
