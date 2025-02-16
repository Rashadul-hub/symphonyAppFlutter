import 'package:flutter/material.dart';

import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/checksupportscreen_screen/checksupportscreen_screen.dart';

class AppRoutes {
  static const String homescreenScreen = '/home_screen';
  static const String iphone13MiniFourInitialPage = '/initial_page';
  static const String checksupportscreenScreen = '/checksupport_screen';
  static const String specificationscreenScreen = '/specification_screen';
  static const String queryscreenScreen = '/query_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
    // homescreenScreen: HomescreenScreen.builder,
    // checksupportscreenScreen: ChecksupportscreenScreen.builder,
    // specificationscreenScreen: SpecificationscreenScreen.builder,
    // queryscreenScreen: QueryscreenScreen.builder,
    appNavigationScreen: AppNavigationScreen.builder,
    initialRoute: ChecksupportscreenScreen.builder
  };
}