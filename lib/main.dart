import 'package:flutter/material.dart';
import 'package:marketo/helper/app_router.dart';
import 'package:marketo/helper/lang/lang.dart';
import 'package:marketo/helper/theme/app_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Marketo',
        // ignore: unnecessary_null_comparison
        supportedLocales: AppLang.suporttedLangs,
        localizationsDelegates: AppLang.localizationsDelegates,
        localeResolutionCallback: AppLang.localeResolutionCallback,
        theme: getThemeDate(),
        onGenerateRoute: AppRoutes.generateRoutes,
        initialRoute: 'splash',
      ),
    );
  }
}
