import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:symphony_app/presentation/specificationscreen_screen/models/ramlist_item_model.dart';
import 'package:symphony_app/presentation/specificationscreen_screen/provider/specificationscreen_provider.dart';
import 'package:symphony_app/presentation/specificationscreen_screen/widgets/processorlist_item_widget.dart';
import 'package:symphony_app/presentation/specificationscreen_screen/widgets/ramlist_item_widget.dart';

import '../../core/app_export.dart';
import '../../widgets/appbar/app_leading_image.dart';
import '../../widgets/appbar/appbar_subtitle.dart';
import '../../widgets/appbar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import 'models/processorlist_item_model.dart';

class SpecificationscreenScreen extends StatefulWidget {

  const SpecificationscreenScreen({super.key});

  @override
  State<SpecificationscreenScreen> createState() => _SpecificationscreenScreenState();
  static Widget builder(BuildContext context){
    return ChangeNotifierProvider(create: (context) => SpecificationscreenProvider(),
    child: SpecificationscreenScreen(),);
  }



}

class _SpecificationscreenScreenState extends State<SpecificationscreenScreen> {
 GlobalKey<NavigatorState> navigatorKey = GlobalKey();

 @override
  void initState() {
    super.initState();
  }

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     extendBody: true,
     // extendBodyBehindAppBar: true,
     // backgroundColor: appTheme.black900,
     appBar: _buildAppBar(context),
     body: SafeArea(
       top: false,
       child: SizedBox(
         width: double.maxFinite,
         child: SingleChildScrollView(
           child: Container(
             width: double.maxFinite,
             padding: EdgeInsets.only(
               left: 16.h,
               top: 6.h,
               right: 16.h,
             ),
             child: Column(
               children: [
                 _buildOnlineSupportRow(context),
                 SizedBox(height: 16.h),
                 _buildProcessorList(context),
                 SizedBox(height: 16.h),
                 _buildDisplayColumn(context),
                 SizedBox(height: 16.h),
                 _buildRamList(context),
                 SizedBox(height: 16.h),
                 _buildCameraColumn(context),
                 SizedBox(height: 16.h),
                 _buildSettingsRow(context),
                 SizedBox(height: 16.h),
                 _buildDeviceSensorsColumn(context),
                 SizedBox(height: 14.h),
               ],
             ),
           ),
         ),
       ),
     ),
     bottomNavigationBar: SizedBox(
       width: double.maxFinite,
       child: _buildBottomBar(context),
     ),
   );
 }


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
       text: "lbl_specification".tr,
       margin: EdgeInsets.only(left: 16.h,top: 16.h),
     ),
   );
 }
 /// Section Widget
 Widget _buildBottomBar(BuildContext context) {
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


 /// Section Widget
 Widget _buildOnlineSupportRow(BuildContext context) {
   return Container(
     padding: EdgeInsets.symmetric(horizontal: 14.h),
     decoration: AppDecoration.fillGray.copyWith(
       borderRadius: BorderRadiusStyle.roundedBorder16,
     ),
     width: double.maxFinite,
     child: Row(
       children: [
         Expanded(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(
                 "lbl_powered_by".tr,
                 style: CustomTextStyles.labelLargeOnPrimary,
               ),
               SizedBox(
                 width: double.maxFinite,
                 child: Row(
                   children: [
                     Text(
                       "lbl_android".tr,
                       style: theme.textTheme.titleLarge,
                     ),
                     CustomImageView(
                       imagePath: ImageConstant.imgThumbsUp,
                       height: 14.h,
                       width: 14.h,
                       alignment: Alignment.topCenter,
                       margin: EdgeInsets.only(top: 2.h),
                     ),
                     Padding(
                       padding: EdgeInsets.only(left: 8.h),
                       child: Text(
                         "lbl_14".tr,
                         style: theme.textTheme.titleLarge,
                       ),
                     ),
                   ],
                 ),
               ),
             ],
           ),
         ),
         CustomImageView(
           imagePath: ImageConstant.imgNavHome,
           height: 46.h,
           width: 80.h,
           alignment: Alignment.bottomCenter,
           margin: EdgeInsets.only(top: 36.h),
         ),
       ],
     ),
   );
 }
 /// Section Widget
 Widget _buildProcessorList(BuildContext context) {
   return Container(
     width: double.maxFinite,
     child: Consumer<SpecificationscreenProvider>(
       builder: (context, provider, child) {
         return SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           child: Wrap(
             direction: Axis.horizontal,
             spacing: 16.h,
             children: List.generate(
               provider.specificationscreenModelObj.processorlistItemList.length,
                   (index) {
                 ProcessorlistItemModel model = provider.specificationscreenModelObj.processorlistItemList[index];
                 return ProcessorListItemWidget(
                   model,
                 );
               },
             ),
           ),
         );
       },
     ),
   );
 }
 /// Section Widget
 Widget _buildDisplayColumn(BuildContext context) {
   return Container(
     width: double.maxFinite,
     padding: EdgeInsets.only(
       left: 16.h,
       top: 18.h,
       bottom: 18.h,
     ),
     decoration: AppDecoration.fillGray.copyWith(
       borderRadius: BorderRadiusStyle.roundedBorder16,
     ),
     child: Column(
       mainAxisSize: MainAxisSize.min,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         SizedBox(height: 4.h),
         CustomImageView(
           imagePath: ImageConstant.imgThumbsUp,
           height: 32.h,
           width: 34.h,
         ),
         SizedBox(height: 12.h),
         Text(
           "lbl_display".tr,
           style: theme.textTheme.labelLarge,
         ),
         SizedBox(height: 2.h),
         Text(
           "msg_6_7_fhd_amoled".tr,
           maxLines: 2,
           overflow: TextOverflow.ellipsis,
           style: theme.textTheme.titleSmall!.copyWith(
             height: 1.40,
           ),
         ),
       ],
     ),
   );
 }
 /// Section Widget
 Widget _buildRamList(BuildContext context) {
   return Container(
     width: double.maxFinite,
     child: Consumer<SpecificationscreenProvider>(
       builder: (context, provider, child) {
         return SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           child: Wrap(
             direction: Axis.horizontal,
             spacing: 16.h,
             children: List.generate(
               provider.specificationscreenModelObj.ramlistItemList.length,
                   (index) {
                 RamlistitemModel model = provider
                     .specificationscreenModelObj.ramlistItemList[index];
                 return RamlListItemWidget(
                   model,
                 );
               },
             ),
           ),
         );
       },
     ),
   );
 }

 /// Section Widget
 Widget _buildCameraColumn(BuildContext context) {
   return Container(
     width: double.maxFinite,
     padding: EdgeInsets.all(16.h),
     decoration: AppDecoration.fillGray.copyWith(
       borderRadius: BorderRadiusStyle.roundedBorder16,
     ),
     child: Column(
       mainAxisSize: MainAxisSize.min,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         SizedBox(height: 6.h),
         CustomImageView(
           imagePath: ImageConstant.imgMenu,
           height: 32.h,
           width: 34.h,
         ),
         SizedBox(height: 10.h),
         Text(
           "lbl_camera".tr,
           style: theme.textTheme.labelLarge,
         ),
         SizedBox(height: 2.h),
         Text(
           "msg_64mp_2mp_macro".tr,
           maxLines: 2,
           overflow: TextOverflow.ellipsis,
           style: theme.textTheme.titleSmall!.copyWith(
             height: 1.40,
           ),
         ),
       ],
     ),
   );
 }

 /// Section Widget
 Widget _buildSettingsRow(BuildContext context) {
   return SizedBox(
     width: double.maxFinite,
     child: Row(
       children: [
         Expanded(
           child: Container(
             width: double.maxFinite,
             padding: EdgeInsets.only(
               left: 16.h,
               top: 18.h,
               bottom: 18.h,
             ),
             decoration: AppDecoration.fillGray.copyWith(
               borderRadius: BorderRadiusStyle.roundedBorder16,
             ),
             child: Column(
               mainAxisSize: MainAxisSize.min,
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 SizedBox(height: 4.h),
                 CustomImageView(
                   imagePath: ImageConstant.imgMenu,
                   height: 32.h,
                   width: 34.h,
                 ),
                 SizedBox(height: 10.h),
                 Text(
                   "lbl_network".tr,
                   style: theme.textTheme.labelLarge,
                 ),
                 SizedBox(height: 2.h),
                 Text(
                   "lbl_4g_3g_2g".tr,
                   style: theme.textTheme.titleSmall,
                 ),
               ],
             ),
           ),
         ),
         SizedBox(width: 16.h),
         Expanded(
           child: Container(
             width: double.maxFinite,
             padding: EdgeInsets.only(
               left: 16.h,
               top: 18.h,
               bottom: 18.h,
             ),
             decoration: AppDecoration.fillGray.copyWith(
               borderRadius: BorderRadiusStyle.roundedBorder16,
             ),
             child: Column(
               mainAxisSize: MainAxisSize.min,
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 SizedBox(height: 4.h),
                 CustomImageView(
                   imagePath: ImageConstant.imgArrowLeft,
                   height: 32.h,
                   width: 34.h,
                 ),
                 SizedBox(height: 12.h),
                 Text(
                   "lbl_battery".tr,
                   style: theme.textTheme.labelLarge,
                 ),
                 Text(
                   "lbl_5000mah".tr,
                   style: theme.textTheme.titleSmall,
                 ),
               ],
             ),
           ),
         ),
       ],
     ),
   );
 }
 /// Section Widget
 Widget _buildDeviceSensorsColumn(BuildContext context) {
   return Container(
     width: double.maxFinite,
     padding: EdgeInsets.all(16.h),
     decoration: AppDecoration.fillGray.copyWith(
       borderRadius: BorderRadiusStyle.roundedBorder16,
     ),
     child: Column(
       mainAxisSize: MainAxisSize.min,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         SizedBox(height: 6.h),
         CustomImageView(
           imagePath: ImageConstant.imgCalender,
           height: 32.h,
           width: 34.h,
         ),
         SizedBox(height: 10.h),
         Text(
           "lbl_device_sensors".tr,
           style: theme.textTheme.labelLarge,
         ),
         SizedBox(height: 2.h),
         Text(
           "msg_fingerprint_pro".tr,
           maxLines: 2,
           overflow: TextOverflow.ellipsis,
           style: theme.textTheme.titleSmall!.copyWith(
             height: 1.40,
           ),
         ),
       ],
     ),
   );
 }
 /// Navigates to the previous screen.
 onTapArrowleftone(BuildContext context) {
   NavigatorService.goBack();
 }

}
