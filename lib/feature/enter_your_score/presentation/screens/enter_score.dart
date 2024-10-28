import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:score_app/core/app_strings/app_strings.dart';
import 'package:score_app/core/common_widgets/custom_button.dart';
import 'package:score_app/core/common_widgets/textformfeild.dart';
import 'package:score_app/core/helpers/extensions.dart';
import 'package:score_app/core/routing/routes.dart';
import 'package:score_app/core/themes/assets.dart';
import 'package:score_app/core/themes/colors.dart';
import 'package:score_app/feature/enter_your_score/bloc/cubit/enter_your_score_cubit.dart';
import 'package:score_app/feature/enter_your_score/presentation/widgets/text_span.dart';

class EnterYourScoreScreen extends StatefulWidget {
const  EnterYourScoreScreen({super.key});

  @override
  State<EnterYourScoreScreen> createState() => _EnterYourScoreScreenState();
}


class _EnterYourScoreScreenState extends State<EnterYourScoreScreen> {
  final formKey = GlobalKey<FormState>();

  final scoreController = TextEditingController();
 
@override
  void dispose() {
   scoreController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: BlocProvider(
      create: (context) => EnterYourScoreCubit(),
      child: Form(
        key: formKey,
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: ListView(
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomTextSpanHorizetal(),
                    Expanded(
                      child: Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: SvgPicture.asset(Assets.treeIcon),
                          )),
                    )
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    AppStrings.enterYorScore,
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: "BalooBhaijaan2",
                        color: AppColors.green1,
                        fontWeight: FontWeight.bold  
                        ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
               BlocBuilder<EnterYourScoreCubit, EnterYourScoreState>(
  builder: (context, state) {
    var cubit = EnterYourScoreCubit.get(context);
    return SizedBox(
      child: CustomTextFormField(
        onChanged: (value) {
          cubit.getScore(value);  
          if (kDebugMode) {
            print(value);
          }
        },
        validator: (val) {
          if (val!.isEmpty) {
            return "Please enter your score";
          }
          return null;
        },
        controller: scoreController,
      ),
    );
  },
),
const SizedBox(
  height: 50,
),
BlocBuilder<EnterYourScoreCubit, EnterYourScoreState>(
  builder: (context, state) {
    var cubit = EnterYourScoreCubit.get(context);
    return CustomButton(
      text: AppStrings.start,
      color: cubit.score != null ? AppColors.yellow1 : AppColors.black.withOpacity(0.1),
      onPressed: () {
     if(formKey.currentState!.validate()){
      context.pushNamed(Routes.mainLayOut,arguments:int.parse(scoreController.text) );
     }
     
      },
    );
  },
)
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
