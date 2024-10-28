import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CutomTextHeader extends StatelessWidget {
  const CutomTextHeader({super.key, required this.text, required this.style});
  final String text;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 36.w),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            style: style,
          )),
    );
  }
}
