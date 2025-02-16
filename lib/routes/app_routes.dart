import 'package:flutter/material.dart';

import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/checksupportscreen_screen/checksupportscreen_screen.dart';
import '../presentation/homescreen_screen/homescreen_screen.dart';




class AppRoutes {
  static const String homescreenScreen = '/homescreen_screen';
  static const String iphone13MiniFourInitialPage = '/iphone_13_mini_four_initial_page';
  static const String checksupportsScreen = '/checksupportscreen_screen';
  static const String specificationscreenScreen = '/specificationscreen_screen';
  static const String queryscreenScreen = '/queryscreen_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
    homescreenScreen: HomescreenScreen.builder,
    checksupportsScreen: ChecksupportscreenScreen.builder,
    // specificationscreenScreen: SpecificationscreenScreen.builder,
    // queryscreenScreen: QueryscreenScreen.builder,
    appNavigationScreen: AppNavigationScreen.builder,
    initialRoute: HomescreenScreen.builder,
  };
}