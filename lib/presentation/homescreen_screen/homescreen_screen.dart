import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import 'iphone_13_mini_four_initial_page.dart';
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
           initialRoute: AppRoutes.iphone13MiniFourInitialPage,
           onGenerateRoute: (routeSetting) => PageRouteBuilder(
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
         Navigator.pushNamed(
             navigatorKey.currentContext!, getCurrentRoute(type));
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
       return AppRoutes.iphone13MiniFourInitialPage;
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
     case AppRoutes.iphone13MiniFourInitialPage:
       return Iphone13MiniFourInitialPage.builder(context);
     default:
       return DefaultWidget();
   }
 }



}
