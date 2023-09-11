import 'package:flutter/material.dart'
    show BuildContext, MaterialPageRoute, Route, RouteSettings, Widget;

import '../imports/screen_imports.dart';

class AppRoutes {
  static const initialRoute = 'homescreen';

  static Map<String, Widget Function(BuildContext)> routes = {
    'homescreen': (context) => const HomeScreen(),
    'productoscreen': (context) => const ProductoScreen(),
    'clientescreen': (context) => const ClienteScreen(),
    'alertscreen': (context) => const AlertScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
