import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../helper/constants/app_colors.dart';

class AppLogoAuth extends StatelessWidget {
  const AppLogoAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 80.w,
      backgroundColor: scondaryColor.withOpacity(0.03),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
            tag: 'app_logo',
            transitionOnUserGestures: true,
            child: Image.asset(
              'assets/images/app_logo_img.png',
              width: 100.w,
            ),
          ),
          Image.asset(
            'assets/images/app_logo_text.png',
            width: 120.w,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          )
        ],
      ),
    );
  }
}
