import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:score_app/feature/home/presentation/screens/home_screen.dart';
import 'package:score_app/feature/main_layout/cubit/main_lay_out_cubit.dart';
import 'package:score_app/feature/main_layout/widgets/custom_nav_bar.dart';
import 'package:score_app/feature/screns/page1.dart';
import 'package:score_app/feature/screns/page2.dart';
import 'package:score_app/feature/screns/page3.dart';

class MainLayOutScreen extends StatelessWidget {
  const MainLayOutScreen({super.key, required this.score});

  final int score;

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      HomeScreen(score: score),
      const Page1(),
      const Page2(),
      const Page3(),
    ];

    return BlocBuilder<MainLayOutCubit, MainLayOutState>(
      builder: (context, state) {
        var cubit = MainLayOutCubit.get(context);
        return Scaffold(
          body: Stack(
            children: [
              screens[cubit.index],
              Positioned(
                  bottom:1.h,
                  left: 10.w,
                  right: 10.w,
                  child: const CutomNavBar())
            ],
          ),
        );
      },
    );
  }
}
