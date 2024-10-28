import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextSpanVirtcal extends StatelessWidget {
  const CustomTextSpanVirtcal(
      {super.key,
      required this.firstText,
      required this.lastText,
      required this.color1,
      required this.color2});
  final String firstText;
  final String lastText;
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: firstText,
            style: TextStyle(
              fontSize: 18.sp,
              fontFamily: "BalooBhaijaan2",
              color: color1,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: lastText,
            style: TextStyle(
              fontSize: 18.sp,
              fontFamily: "BalooBhaijaan2",
              color: color2,
              //fontWeight: FontWeight.normal, // Normal weight for "Omar"
            ),
          ),
        ],
      ),
    );
  }
}
