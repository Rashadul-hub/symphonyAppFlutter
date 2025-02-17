import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/appbar/app_leading_image.dart';
import '../../widgets/appbar/appbar_subtitle.dart';
import '../../widgets/appbar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import 'models/supportgrid_item_model.dart';
import 'provider/checksupportscreen_provider.dart';
import 'widgets/supportgrid_item_widget.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';


class ChecksupportscreenScreen
    extends StatefulWidget {
  const ChecksupportscreenScreen({super.key});

  @override
  State<ChecksupportscreenScreen> createState() =>
      _ChecksupportscreenScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChecksupportscreenProvider(),
      child: ChecksupportscreenScreen(),
    );
  }
}

class _ChecksupportscreenScreenState extends State<ChecksupportscreenScreen> {

  GlobalKey<NavigatorState>navigatorKey = GlobalKey();


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.red,
        extendBody: false,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          height: SizeUtils.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFF1F7FF),
                Color(0xFFF6F6F6),
              ],
            ),
          ),
          // decoration: AppDecoration.gradientGrayToGray,
          child: SafeArea(
            child: Container(
              margin: EdgeInsets.only(top: 5.h),
              padding: EdgeInsets.only(
                left: 16.h,
                top: 6.h,
                right: 16.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [_buildSupportGrid(context)],
              ),
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: double.maxFinite,
          child: _buildBottomNavigation(context),
        ),
      ),
    );
  }



  /// Section AppBar Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(

      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(left: 16.h,top: 16.h),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      title: AppBarSubtitle(
        // text: "Check Support",
        text: "lbl_check_support".tr,
        margin: EdgeInsets.only(left: 16.h,top: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildSupportGrid(BuildContext context) {
    return Expanded(
      child: Consumer<ChecksupportscreenProvider>(
        builder: (context, provider, child) {
          return ResponsiveGridListBuilder(
            minItemWidth: 1,
            minItemsPerRow: 2,
            maxItemsPerRow: 2,
            horizontalGridSpacing: 12.h,
            verticalGridSpacing: 12.h,
            builder: (context, items) => ListView(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(),
              children: items,
            ),
            gridItems: List.generate(
              provider.checksupportscreenModelObj.supportgridItemList.length,
                  (index) {
                SupportgridItemModel model = provider
                    .checksupportscreenModelObj.supportgridItemList[index];
                return SupportgridItemWidget(
                  model,
                  onTapOnlinesupport: () {

                    if(model.containerTitle == "lbl_lso_query".tr){
                      NavigatorService.pushNamed(AppRoutes.queryscreenScreen);
                    }else if(model.containerTitle == "lbl_specification".tr){
                      NavigatorService.pushNamed(AppRoutes.specificationscreenScreen);
                    }else{
                       onTapOnlinesupport(context);
                    }
                  },
                );
              },
            ),
          );
        },
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
            // navigatorKey.currentContext!, getCurrentRoute(type),
            context, getCurrentRoute(type),
          );
        },
      ),
    );
  }

  ///Handling route based on bottom click actions
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

  /// Navigates to the previous screen.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the specificationscreenScreen when the action is triggered.
  onTapOnlinesupport(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homescreenScreen,
      // AppRoutes.specificationscreenScreen,
      // AppRoutes.initialRoute,
      // getCurrentRoute(type),
    );
  }


}
