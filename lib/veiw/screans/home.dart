import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../helper/constants/app_colors.dart';
import '../../helper/lang/app_localization.dart';
import '../../veiw_model/text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '1'.tr(context),
          style: TextStyle(fontSize: 30.sp, color: Colors.red),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: primaryColor,
          onPressed: () {
            context.read<TestMoel>().changeLocal(0);
          }),
    );
  }
}
