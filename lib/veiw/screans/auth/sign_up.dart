import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../helper/constants/app_colors.dart';
import '../../widgets/custom_widget/auth/logo.dart';
import '../../widgets/public_widgets/button.dart';
import '../../widgets/public_widgets/sized_box.dart';
import '../../widgets/public_widgets/space.dart';
import '../../widgets/public_widgets/text.dart';
import '../../widgets/public_widgets/tff.dart';

class SignUpVeiw extends StatelessWidget {
  const SignUpVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NewSizedBox(
        child: Column(
          children: [
            const HSizedBox(
              h: 0.04,
            ),
            const AppLogoAuth(),
            const HSizedBox(
              h: 0.04,
            ),
            AppTFF(
              controller: TextEditingController(),
              hint: 'Email Address',
              icon: Icons.person_outline_rounded,
            ),
            const HSizedBox(
              h: 0.022,
            ),
            AppTFF(
              controller: TextEditingController(),
              hint: 'password',
              icon: Icons.lock_outline_rounded,
            ),
            const HSizedBox(
              h: 0.022,
            ),
            AppTFF(
              controller: TextEditingController(),
              hint: 'Confirm password',
              icon: Icons.lock_outline_rounded,
            ),
            const HSizedBox(
              h: 0.05,
            ),
            const AppButton(
              txt: 'SIGN UP',
              color: scondaryColor,
            ),
            const HSizedBox(
              h: 0.035,
            ),
            AppText(
              txt: 'Already have an account?',
              color: grayColor,
              size: 16.sp,
              fw: FontWeight.w400,
            ),
            AppTextButton(
              txt: 'SIGN IN NOW',
              onTap: () {
                Navigator.of(context).pushReplacementNamed(
                  'sign_in',
                );
              },
              tColor: scondaryColor,
              fw: FontWeight.w800,
              size: 18.sp,
            ),
            const HSizedBox(
              h: 0.025,
            ),
            AppText(
              txt: 'Terms & Conditions',
              color: grayColor,
              size: 12.sp,
              fw: FontWeight.w400,
            ),
          ],
        ),
      ),
    );
  }
}
