import 'package:flutter/material.dart';

import '../veiw/screans/auth/sign_in_veiw.dart';
import '../veiw/screans/auth/sign_up.dart';
import '../veiw/screans/home.dart';
import '../veiw/screans/splash_screen.dart';

class AppRoutes {
  // ignore: body_might_complete_normally_nullable
  static Route? generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
      case 'splash':
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case 'sign_in':
        return MaterialPageRoute(
          builder: (_) => const SignInVeiw(),
        );
      case 'sign_up':
        return MaterialPageRoute(
          builder: (_) => const SignUpVeiw(),
        );
    }
  }
}
