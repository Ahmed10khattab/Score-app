import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:score_app/core/themes/assets.dart';
import 'package:score_app/core/themes/colors.dart';
import 'package:score_app/core/themes/style.dart';

class PopularItem extends StatelessWidget {
  const PopularItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.green1, borderRadius: BorderRadius.circular(20)),
        alignment: Alignment.center,
        height: 25.h,
        width: 220.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "COIN\n",
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: "BalooBhaijaan2",
                          color: AppColors.yellow1,
                          fontWeight: FontWeight.bold,
                          height: 0.8,
                        ),
                      ),
                      TextSpan(
                        text: "TREE",
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: "BalooBhaijaan2",
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                          height: 0.8,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                SizedBox(
                  height: 10.h,
                  child: MaterialButton(
                    minWidth: 20,
                    color: Colors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    onPressed: () {},
                    child: Center(
                      child: Row(
                        children: [
                          Text(
                            "Start",
                            style: AppStyle.text9,
                          ),
                          Icon(
                            Icons.arrow_outward,
                            size: 13.w,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
                height: 500.h,
                width: 120.w,
                child: Image.asset(
                  Assets.bigTree,
                ))
          ],
        ),
      ),
    );
  }
}
