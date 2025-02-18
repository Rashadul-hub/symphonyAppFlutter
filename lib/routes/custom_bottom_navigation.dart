import 'package:flutter/material.dart';

import '../core/app_export.dart';
import '../widgets/custom_bottom_bar.dart';

class CustomBottomNavigation extends StatelessWidget {
   const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CustomBottomBar(
        onChanged: (BottomBarEnum selectedTab) {
           final String targetRoute = _getRouteForTab(selectedTab);

           Navigator.pushReplacementNamed(
             context,
            targetRoute,
          );
        },
      ),
    );
  }
  String _getRouteForTab(BottomBarEnum selectedTab) {
    switch (selectedTab) {
      case BottomBarEnum.Website:
        return "/";
      case BottomBarEnum.Home:
        return AppRoutes.homescreenScreen;
      case BottomBarEnum.Social:
        return "/";
      default:
        return "/";
    }
  }
}
