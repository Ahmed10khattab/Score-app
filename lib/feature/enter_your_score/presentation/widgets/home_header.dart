import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:score_app/core/themes/assets.dart';
import 'package:score_app/feature/home/presentation/widgets/app_bar_title.dart';

class HeaderEnterScoreScreen extends StatelessWidget {
  const HeaderEnterScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: 40.h,
             
            child: Stack(
              children: [
                const Align(alignment: Alignment.center, child: AppBarTitle()),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: SvgPicture.asset(Assets.treeIcon),
                    ))
              ],
            ),
          );
  }
}