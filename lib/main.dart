import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:score_app/core/cache_helper/cache_helper.dart';
import 'package:score_app/core/helpers/service_locator.dart';
import 'package:score_app/core/routing/app_router.dart';
import 'package:score_app/feature/enter_your_score/presentation/screens/enter_score.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  CacheHelper.init();
  ServicesLocator.init();
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 447),
      minTextAdapt: true,
      child: MaterialApp(
        onGenerateRoute: appRouter.generateRoute,
        debugShowCheckedModeBanner: false,
        home:const EnterYourScoreScreen(),
      ),
    );
  }
}
