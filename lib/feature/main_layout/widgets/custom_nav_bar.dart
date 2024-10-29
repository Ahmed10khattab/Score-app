import 'package:flutter/material.dart';
 import 'package:flutter_screenutil/flutter_screenutil.dart';
 import 'package:score_app/core/themes/assets.dart';
import 'package:score_app/core/themes/colors.dart';
 import 'package:score_app/feature/main_layout/widgets/nav_bar_item.dart';

class CutomNavBar extends StatelessWidget {
  const CutomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  
        
          Padding(
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
              const Row(
                children: [
                  NavBarItem(index: 0, assets: Assets.home),
                  NavBarItem(index: 1, assets: Assets.tennis),
                  NavBarItem(index: 2, assets: Assets.badge),
                  NavBarItem(index: 3, assets: Assets.tennis)
                ],
              )
            ],
          ),
        );
       
     
  }
}
