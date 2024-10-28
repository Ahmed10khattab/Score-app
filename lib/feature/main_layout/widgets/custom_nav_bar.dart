import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:score_app/core/themes/assets.dart';
import 'package:score_app/core/themes/colors.dart';
import 'package:score_app/feature/main_layout/cubit/main_lay_out_cubit.dart';

class CutomNavBar extends StatelessWidget {
  const CutomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainLayOutCubit, MainLayOutState>(
      builder: (context, state) {
        var cubit = MainLayOutCubit.get(context);
        return Padding(
          padding: const EdgeInsets.only(bottom: 15, right: 15, left: 15),
          child: Stack(
            children: [
              Container(
                height: 35.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    //color: AppColors.yellow1,
                    borderRadius: BorderRadius.circular(20)),
                child: const Row(
                  children: [],
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  height: 30.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 10,
                            color: Color.fromARGB(255, 231, 231, 231),
                            offset: Offset.zero)
                      ],
                      borderRadius: BorderRadius.circular(20)),
                  child: const Row(
                    children: [],
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        cubit.changeMainLayOutScreens(0);
                      },
                      child: cubit.index == 0
                          ? CircleAvatar(
                              backgroundColor: AppColors.green1,
                              radius: 25.w,
                              child: SvgPicture.asset(Assets.home),
                            )
                          : Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: SvgPicture.asset(Assets.home,
                                  height: 13.h,
                                  width: 13.w,
                                  color:
                                      const Color.fromARGB(255, 214, 214, 214)),
                            ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        cubit.changeMainLayOutScreens(1);
                      },
                      child: cubit.index == 1
                          ? CircleAvatar(
                              backgroundColor:
                                  cubit.index == 1 ? AppColors.green1 : null,
                              radius: 25.w,
                              child: SvgPicture.asset(
                                Assets.tennis,
                                color: AppColors.white,
                              ),
                            )
                          : Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: SvgPicture.asset(
                                Assets.tennis,
                                height: 13.h,
                                width: 13.w,
                              ),
                            ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        cubit.changeMainLayOutScreens(2);
                      },
                      child: cubit.index == 2
                          ? CircleAvatar(
                              backgroundColor:
                                  cubit.index == 2 ? AppColors.green1 : null,
                              radius: 25.w,
                              child: SvgPicture.asset(
                                Assets.badge,
                                color: AppColors.white,
                              ),
                            )
                          : Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: SvgPicture.asset(
                                Assets.badge,
                                height: 13.h,
                                width: 13.w,
                              ),
                            ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        cubit.changeMainLayOutScreens(3);
                      },
                      child: cubit.index == 3
                          ? CircleAvatar(
                              backgroundColor: AppColors.green1,
                              radius: 25.w,
                              child: SvgPicture.asset(
                                Assets.tennis,
                                color: AppColors.white,
                              ),
                            )
                          : Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: SvgPicture.asset(
                                Assets.tennis,
                                height: 13.h,
                                width: 13.w,
                              ),
                            ),
                    ),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
