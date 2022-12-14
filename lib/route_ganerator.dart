import 'package:flutter/material.dart';
import 'package:kolay_arapca_yeniden/kategoriler.dart';


class RouteGanerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: ((context) => Kategorilers()));
    }
  }
}
