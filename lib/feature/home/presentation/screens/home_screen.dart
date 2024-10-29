import 'package:flutter/material.dart';
 import 'package:flutter_screenutil/flutter_screenutil.dart';
 import 'package:score_app/core/app_strings/app_strings.dart';
import 'package:score_app/core/common_widgets/custom_button.dart';
import 'package:score_app/core/themes/assets.dart';
import 'package:score_app/core/themes/colors.dart';
import 'package:score_app/core/themes/style.dart';
import 'package:score_app/feature/home/presentation/animation/score_counter.dart';
 import 'package:score_app/feature/home/presentation/widgets/back_groud_yellow.dart';
import 'package:score_app/feature/home/presentation/widgets/custom_text.dart';
import 'package:score_app/feature/home/presentation/widgets/home_header.dart';
import 'package:score_app/feature/home/presentation/widgets/latest_budges.dart';
import 'package:score_app/feature/home/presentation/widgets/popular.dart';
import 'package:score_app/feature/home/presentation/widgets/progress_item.dart';
import 'package:score_app/feature/home/presentation/widgets/rank_widget.dart';
import 'package:score_app/feature/home/presentation/widgets/text_span.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.score});
  final int score;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      body: ListView(
        children: [
        const  HeaderHome(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 36.w),
            child: Container(
              height: 140.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  const BackGroudYellow(),
                  Positioned(
                    top: 25.h,
                    left: 170.w,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 10.h,
                          backgroundImage: const AssetImage(Assets.boy2),
                          backgroundColor: Colors.transparent,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        const CustomTextSpanVirtcal(
                            firstText: "Hi ,",
                            lastText: "Oamer",
                            color1: AppColors.black,
                            color2: AppColors.black),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(AppStrings.totalScore,
                            style: TextStyle(
                                fontSize: 9.sp,
                                fontFamily: "BalooBhaijaan2",
                                color: AppColors.black,
                                fontWeight:
                                    FontWeight.bold // First part in yellow
                                )),
                        ScoreAnimation(score: score)
                      ],
                    ),
                  ),
                  const RankWidgets(),
                  ProgressBarItem(score: score),
                  Positioned(
                    top: 2.h,
                    left: 25.w,
                    child: Image.asset(
                      Assets.boy,
                      height: 100.h,
                      width: 100.w,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          CustomButton(text: AppStrings.continueChallenge, onPressed: () {},color: AppColors.yellow1,),
          SizedBox(
            height: 10.h,
          ),
          const CutomTextHeader(
            text: AppStrings.latestBadgets,
            style: AppStyle.text20green,
          ),
          const LatestBudges(),
          SizedBox(
            height: 2.h,
          ),
          const CutomTextHeader(
            text: AppStrings.popularChalenges,
            style: AppStyle.text20green,
          ),
          const Popular()
        ],
      ),
    );
  }
}
