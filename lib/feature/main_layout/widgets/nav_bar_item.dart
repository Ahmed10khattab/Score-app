import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:score_app/core/themes/colors.dart';
import 'package:score_app/feature/main_layout/cubit/main_lay_out_cubit.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({super.key, required this.index, required this.assets});
  final int index;
  final String assets;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainLayOutCubit, MainLayOutState>(
      builder: (context, state) {
        var cubit = MainLayOutCubit.get(context);
        return Expanded(
          child: GestureDetector(
            onTap: () {
              cubit.changeMainLayOutScreens(index);
            },
            child: cubit.index == index
                ? CircleAvatar(
                    backgroundColor: AppColors.green1,
                    radius: 27.w,
                    child: SvgPicture.asset(
                      assets,
                      color: AppColors.white,
                    ),
                  )
                : Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: SvgPicture.asset(assets,
                        height: 13.h,
                        width: 13.w,
                        color: const Color.fromARGB(255, 214, 214, 214)),
                  ),
          ),
        );
      },
    );
  }
}
