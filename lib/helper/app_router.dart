import 'package:flutter/material.dart';
import 'package:marketo/veiw/screans/home.dart';

class AppRoutes {
  // ignore: body_might_complete_normally_nullable
  static Route? generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
    }
  }
}
