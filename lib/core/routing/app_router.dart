import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import 'package:score_app/core/routing/routes.dart';
import 'package:score_app/core/themes/colors.dart';
import 'package:score_app/core/themes/style.dart';
import 'package:score_app/feature/enter_your_score/bloc/cubit/enter_your_score_cubit.dart';
import 'package:score_app/feature/enter_your_score/presentation/screens/enter_score.dart';
import 'package:score_app/feature/home/presentation/screens/home_screen.dart';
import 'package:score_app/feature/main_layout/cubit/main_lay_out_cubit.dart';
import 'package:score_app/feature/screns/main_lay_out.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.enterYourScore:
        return PageTransition(
          child: Scaffold(
            body: Center(
              child: BlocProvider(
                create: (context) => EnterYourScoreCubit(),
                child: const EnterYourScoreScreen(),
              ),
            ),
          ),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 200),
          alignment: Alignment.center,
          settings: settings,
        );

      case Routes.mainLayOut:
        var arguments = settings.arguments as int;
        return PageTransition(
          child: Scaffold(
            body: Center(
              child: BlocProvider(
                create: (context) => MainLayOutCubit(),
                child: MainLayOutScreen(
                  score: arguments,
                ),
              ),
            ),
          ),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 200),
          alignment: Alignment.center,
          settings: settings,
        );

      case Routes.homeScreen:
        var arguments = settings.arguments as int;
        return PageTransition(
          child: Builder(
            builder: (context) {
              return WillPopScope(
                onWillPop: () async {
                  final shouldPop = await showExitConfirmationDialog(context);
                  return shouldPop ??
                      false; // Return true if the user confirms exit, else false
                },
                child: HomeScreen(
                  score: arguments,
                ),
              );
            },
          ),
          type: PageTransitionType.rightToLeft,
          alignment: Alignment.center,
          settings: settings,
        );
      // case Routes.homeScreen:
      //   var arguments = settings.arguments as int;
      //   return PageTransition(
      //     child: Scaffold(
      //       body: Center(
      //         child: HomeScreen(
      //           score: arguments,
      //         ),
      //       ),
      //     ),
      //     type: PageTransitionType.fade,
      //     duration: const Duration(milliseconds: 200),
      //     alignment: Alignment.center,
      //     settings: settings,
      //   );

      default:
        return PageTransition(
          child: Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 200),
          alignment: Alignment.center,
          settings: settings,
        );
    }
  }
}

Future<bool?> showExitConfirmationDialog(BuildContext context) async {
  return showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text(
        'exite',
      ),
      content: const Text(
        "do you want to exite from the app?",
        style: AppStyle.text20green,
      ),
      actions: [
        TextButton(
          style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(AppColors.green2)),
          onPressed: () => Navigator.of(context).pop(false), // Stay in the app
          child: const Text("No"),
        ),
        TextButton(
          style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(AppColors.yellow2)),
          onPressed: () => exit(0), // Exit the app
          child: const Text('OK'),
        ),
      ],
    ),
  );
}
