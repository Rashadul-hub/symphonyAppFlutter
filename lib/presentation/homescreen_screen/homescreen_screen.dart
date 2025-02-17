import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import 'dashboard_page.dart';
import 'provider/homescreen_provider.dart';

class HomescreenScreen extends StatefulWidget {
  const HomescreenScreen({super.key});

  @override
  State<HomescreenScreen> createState() => _HomescreenScreenState();
  static Widget builder(BuildContext context){
    return ChangeNotifierProvider(
      create: (context) => HomescreenProvider(),
    child:  HomescreenScreen(),
    );
  }
}

class _HomescreenScreenState extends State<HomescreenScreen> {
 GlobalKey<NavigatorState> navigatorKey = GlobalKey();

 @override
  void initState() {
    super.initState();
  }

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     extendBody: true,
     extendBodyBehindAppBar: true,
     body: Container(
       width: double.maxFinite,
       height: SizeUtils.height,
     decoration: AppDecoration.gradientGrayToGray,
       child: SafeArea(
         child: Navigator(
           key: navigatorKey,
           initialRoute: AppRoutes.dashBoardPage,
           onGenerateRoute: (routeSetting) => PageRouteBuilder(
             settings: routeSetting,
             pageBuilder: (ctx, ani, ani1) =>
                 getCurrentPage(context, routeSetting.name!),
             transitionDuration: Duration(seconds: 0),
           ),
         ),
       ),
     ),
     bottomNavigationBar: SizedBox(
       width: double.maxFinite,
       child: _buildBottomNavigation(context),
     ),
   );
 }

 /// Section Widget
 Widget _buildBottomNavigation(BuildContext context) {
   return SizedBox(
     width: double.maxFinite,
     child: CustomBottomBar(
       onChanged: (BottomBarEnum type) {
         Navigator.pushReplacementNamed(
             navigatorKey.currentContext!, getCurrentRoute(type)
           // context, getCurrentRoute(type),

         );
         // if (type == BottomBarEnum.Home) {
         //   WidgetsBinding.instance.addPostFrameCallback((_) {
         //     navigatorKey.currentState?.popUntil(
         //             (route) => route.settings.name == AppRoutes.dashBoardPage);
         //     if (ModalRoute.of(navigatorKey.currentContext!)?.settings.name !=
         //         AppRoutes.dashBoardPage) {
         //       Navigator.pushReplacementNamed(
         //         navigatorKey.currentContext!,
         //         AppRoutes.dashBoardPage,
         //       );
         //     }
         //   });
         // } else {
         //   WidgetsBinding.instance.addPostFrameCallback((_) {
         //     Navigator.pushReplacementNamed(
         //       navigatorKey.currentContext!,
         //       getCurrentRoute(type),
         //     );
         //   });
         // }

       },
     ),
   );
 }


 /// Handling route based on bottom click actions
 String getCurrentRoute(BottomBarEnum type) {
   switch (type) {
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

 /// Handling page based on route
 Widget getCurrentPage(
     BuildContext context,
     String currentRoute,
     ) {
   switch (currentRoute) {
     case AppRoutes.dashBoardPage:
       return DashBoardPage.builder(context);

     case AppRoutes.homescreenScreen:
       return HomescreenScreen.builder(context);
     default:
       return DefaultWidget();
   }
 }



}
