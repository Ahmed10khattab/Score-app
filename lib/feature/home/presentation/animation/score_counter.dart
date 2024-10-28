import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:score_app/core/themes/colors.dart';

class ScoreAnimation extends StatelessWidget {
  const ScoreAnimation({super.key, required this.score});
  final int score;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<int>(
      tween: IntTween(begin: 0, end: score),
      duration: const Duration(seconds: 2),
      builder: (context, value, child) {
        return Text(
          value.toString(),
          style: TextStyle(
              fontSize: 39.sp,
              fontFamily: "BalooBhaijaan2",
              color: AppColors.green2,
              fontWeight: FontWeight.bold  
              ),
        );
      },
    );
  }
}
