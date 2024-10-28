import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:score_app/feature/home/presentation/data/data.dart';

class LatestBadgesItem extends StatelessWidget {
  const LatestBadgesItem({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 25.h,
      width: 95.w,
      child: Image.asset(DataList.latestBadges[index]),
    );
  }
}
