import 'package:flutter/material.dart';
import 'package:symphony_app/presentation/homescreen_screen/dashboard_page.dart';

import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/checksupportscreen_screen/checksupportscreen_screen.dart';
import '../presentation/homescreen_screen/homescreen_screen.dart';
import '../presentation/queryscreen_screen/queryscreen_screen.dart';
import '../presentation/specificationscreen_screen/specificationscreen_screen.dart';




class AppRoutes {
  static const String homescreenScreen = '/homescreen_screen';
  static const String dashBoardPage = '/dashboard_page';
  static const String checksupportsScreen = '/checksupportscreen_screen';
  static const String specificationscreenScreen = '/specificationscreen_screen';
  static const String queryscreenScreen = '/queryscreen_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
    homescreenScreen: HomescreenScreen.builder,
    checksupportsScreen: ChecksupportscreenScreen.builder,
    dashBoardPage: DashBoardPage.builder,
    specificationscreenScreen: SpecificationscreenScreen.builder,
    queryscreenScreen: QueryscreenScreen.builder,
    appNavigationScreen: AppNavigationScreen.builder,
    initialRoute: HomescreenScreen.builder,
  };
}