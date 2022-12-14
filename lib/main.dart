import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'helper/app_router.dart';
import 'helper/lang/lang.dart';
import 'helper/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Marketo',
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
