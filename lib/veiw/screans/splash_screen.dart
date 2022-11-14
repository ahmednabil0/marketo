import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketo/helper/constants/app_colors.dart';
import 'package:marketo/veiw/screans/home.dart';
import 'package:marketo/veiw/widgets/public_widgets/text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: AnimatedSplashScreen(
                splash: Image.asset(
                  'assets/images/app_logo_img.png',
                  width: 250.w,
                  fit: BoxFit.contain,
                ),
                centered: true,
                curve: Curves.easeInCirc,
                splashTransition: SplashTransition.fadeTransition,
                animationDuration: const Duration(milliseconds: 1000),
                splashIconSize: 1000.w,
                backgroundColor: backgroundColor,
                nextScreen: const HomePage(),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.w),
              child: AppText(
                txt: 'v.10.2.3.0',
                color: grayColor,
                size: 15.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
