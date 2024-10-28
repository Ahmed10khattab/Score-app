import 'package:flutter/material.dart';
import 'package:score_app/core/app_strings/app_strings.dart';
import 'package:score_app/core/themes/colors.dart';

class CustomTextSpanHorizetal extends StatelessWidget {
  const CustomTextSpanHorizetal({super.key});

  @override
  Widget build(BuildContext context) {
    return               Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.topRight,
                  child: const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: AppStrings.green,
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "BalooBhaijaan2",
                              color: AppColors.green1,
                              fontWeight:
                                  FontWeight.bold // First part in yellow
                              ),
                        ),
                        TextSpan(
                          text: AppStrings.mind,
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "BalooBhaijaan2",
                              color: AppColors.yellow1,
                              fontWeight:
                                  FontWeight.bold // Second part in black
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
  }
}