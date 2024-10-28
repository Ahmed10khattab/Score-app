import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:score_app/core/themes/colors.dart';
import 'package:score_app/feature/home/presentation/widgets/progress_bar.dart';

class ProgressBarItem extends StatelessWidget {
  const ProgressBarItem({super.key, required this.score});
  final int score;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 49.h,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: AppColors.green1,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: ProgressBarWithThumb(score: score),
      ),
    );
  }
}
