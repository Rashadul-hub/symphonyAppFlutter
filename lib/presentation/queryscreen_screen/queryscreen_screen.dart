import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:symphony_app/core/app_export.dart';
import 'package:symphony_app/widgets/custom_elevated_button.dart';
import 'package:symphony_app/widgets/custom_text_form_field.dart';
import '../../widgets/appbar/app_leading_image.dart';
import '../../widgets/appbar/appbar_subtitle.dart';
import '../../widgets/appbar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import 'models/queryscreen_model.dart';
import 'provider/queryscreen_provider.dart';

class QueryscreenScreen extends StatefulWidget {
  const QueryscreenScreen({super.key});

  @override
  State<QueryscreenScreen> createState() => _QueryscreenScreenState();

  static Widget builder(BuildContext context){
    return ChangeNotifierProvider(
      create: (context) => QueryscreenProvider(),
      child:  QueryscreenScreen(),
    );
  }
}

class _QueryscreenScreenState extends State<QueryscreenScreen> {

  GlobalKey<NavigatorState> navigator = GlobalKey();


  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: _buildAppBar(context),
      body: Container(
        width: double.maxFinite,
        height: SizeUtils.height,
        decoration: AppDecoration.gradientGrayToGray,
        child: SafeArea(

          child: Container(
            margin: EdgeInsets.only(top: 30.h),
            padding: EdgeInsets.only(
              left: 14.h,
              right: 14.h,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                _buildOnlineSupportSection(context),
              ],
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
        text: "lbl_lso_query".tr,
        margin: EdgeInsets.only(left: 16.h,top: 16.h),
      ),
    );
  }


  Widget _buildOnlineSupportSection(BuildContext context){
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(
        left: 14.h,
        right: 14.h,
        top: 14.h
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_service_tracking".tr,
            style: CustomTextStyles.titleMediumBlack900Bold,
          ),
          SizedBox(height: 16.h,),
          Text(
            "lbl_enter_lso".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 10.h,),

          Selector<QueryscreenProvider, TextEditingController>(
            selector: (context, provider) => provider.onlineSupportController,
            builder: (context, onlinesupportController, child){
              return CustomTextFormField(
                controller: onlinesupportController,
                hintText: "msg_enter_lso_eg".tr,
                textInputAction: TextInputAction.done,
                contentPadding: EdgeInsets.fromLTRB(16.h, 18.h, 16.h, 14.h),
              );
            }
          ),
          SizedBox(height: 24.h,),
          CustomElevatedButton(
            width: 146.h,
            text: "lbl_get_information".tr,
          ),
          SizedBox(height: 24.h,),


        ],
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
}
