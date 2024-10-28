import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:score_app/feature/home/presentation/data/data.dart';
import 'package:score_app/feature/home/presentation/widgets/latest_badgets.dart';

class LatestBudges extends StatelessWidget {
  const LatestBudges({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      width: double.maxFinite,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: DataList.latestBadges.length,
            itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                child: LatestBadgesItem(index: index))),
      ),
    );
  }
}
