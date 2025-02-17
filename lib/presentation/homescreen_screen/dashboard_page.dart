import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/appbar/appbar_subtitle.dart';
import '../../widgets/appbar/appbar_trailing_image.dart';
import '../../widgets/appbar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'models/list_item_model.dart';
import 'models/listmobiles_item_model.dart';
import 'provider/homescreen_provider.dart';
import 'widgets/list_item_widget.dart';
import 'widgets/listmobiles_item_widget.dart';


class DashBoardPage extends StatefulWidget {

  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
  static Widget builder(BuildContext context){
    return ChangeNotifierProvider(
      create: (context) => HomescreenProvider(),
      child: DashBoardPage(),
    );
  }

}

class _DashBoardPageState extends State<DashBoardPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool _isDrawerOpen = false;
  void _toggleDrawer() {
    if (mounted) {
      setState(() {
        _isDrawerOpen = !_isDrawerOpen;
        print("Drawer is now: ${_isDrawerOpen ? 'Open' : 'Closed'}");
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(52.h),
            child: _buildAppBar(context),
          ),

          body: Container(
            width: double.maxFinite,
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
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  children: [
                    _buildImageSection(context),
                    SizedBox(height: 24.h),
                    _buildHelpSection(context),
                    SizedBox(height: 18.h),
                    _buildTrendingItemsSection(context),
                    SizedBox(height: 18.h),
                    _buildEntertainmentSection(context),
                    SizedBox(height: 18.h),
                    _buildOnlineSupportSection(context),
                    SizedBox(height: 18.h),
                    _buildGamesSection(context),
                    SizedBox(height: 24.h),
                    _buildSocialCommunitySection(context),
                    SizedBox(height: 36.h),
                  ],
                ),
              ),
            ),
          ),
        ),

        // Right Drawer Navigation
        if (_isDrawerOpen) GestureDetector(
          onTap: _toggleDrawer, // Close drawer on tap outside
          child: Container(
            color: Colors.black.withOpacity(0.5), // Dim background
            width: 90,
            height: 90,
          ),
        ),

        AnimatedPositioned(
          duration: Duration(milliseconds: 300),
          right: _isDrawerOpen ? 0 : -MediaQuery.of(context).size.width ,
          top: 0,
          bottom: 0,
          curve: Curves.easeInOut,
          child: _buildRightDrawer(context),
        ),
      ],
    );
  }

  //
  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     width: double.maxFinite,
  //     // decoration: AppDecoration.gradientGrayToGray,
  //     decoration: const BoxDecoration(
  //       gradient: LinearGradient(
  //         begin: Alignment.topCenter,
  //         end: Alignment.bottomCenter,
  //         colors: [
  //           Color(0xFFF1F7FF),
  //           Color(0xFFF6F6F6),
  //         ],
  //       ),
  //     ),
  //     child: Column(
  //       children: [
  //         SizedBox(
  //           width: double.maxFinite,
  //           child: _buildAppBar(context),
  //         ),
  //         Expanded(
  //           child: SingleChildScrollView(
  //             child: Container(
  //               width: double.maxFinite,
  //               padding: EdgeInsets.symmetric(horizontal: 14),
  //               child: Column(
  //                 children: [
  //                   _buildImageSection(context),
  //                   SizedBox(height: 24.h),
  //                   _buildHelpSection(context),
  //                   SizedBox(height: 18.h),
  //                   _buildTrendingItemsSection(context),
  //                   SizedBox(height: 18.h),
  //                   _buildEntertainmentSection(context),
  //                   SizedBox(height: 50.h),
  //                   _buildOnlineSupportSection(context),
  //                   SizedBox(height: 18.h),
  //                   _buildGamesSection(context),
  //                   SizedBox(height: 24.h),
  //                   _buildSocialCommunitySection(context),
  //                   SizedBox(height: 36.h),
  //                 ],
  //               ),
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }




  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 52.h,
      title: AppBarSubtitle(
        text: "lbl_my_symphony".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            print("Menu button tapped");
            _toggleDrawer();
          },
          child: AppbarTrailingImage(
            imagePath: ImageConstant.imgMenu,
            margin: EdgeInsets.only(right: 14.h),
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildImageSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage34,
            height: 160.h,
            width: double.maxFinite,
            radius: BorderRadius.circular(
              16.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHelpSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.fillRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: GestureDetector(
              onTap: () {
                onTapRowvectorone(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 44.h,
                ),
                decoration: AppDecoration.gradientRedCcToRed.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                  image: DecorationImage(
                    image: AssetImage(ImageConstant.pattern), // Your background image asset
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      color: Colors.white,
                      imagePath: ImageConstant.imgVector,
                      height: 40.h,
                      width: 36.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "lbl_need_help".tr,
                        style: CustomTextStyles.titleMediumOnPrimarySemiBold,
                      ),
                    ),
                    Spacer(),
                    CustomElevatedButton(
                      onPressed: (){
                        NavigatorService.pushNamed(
                          AppRoutes.checksupportsScreen,
                        );
                      },
                      height: 38.h,
                      width: 140.h,
                      text: "lbl_check_support".tr,
                      buttonStyle: CustomButtonStyles.fillOnPrimary,
                      buttonTextStyle: CustomTextStyles.titleMediumBlack900_1,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTrendingItemsSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_trending_items".tr,
            style: CustomTextStyles.titleMediumBlack900,
          ),
          SizedBox(height: 8.h),
          Container(
            width: double.maxFinite,
            child: Consumer<HomescreenProvider>(
              builder: (context, provider, child) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 16.h,
                    children: List.generate(
                      provider.iphone13miniFourInitialModelObj
                          .listmobilesItemList.length,
                          (index) {
                        ListmobilesItemModel model = provider
                            .iphone13miniFourInitialModelObj
                            .listmobilesItemList[index];
                        return ListmobilesItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEntertainmentSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("lbl_entertainment".tr, style: CustomTextStyles.titleMediumBlack900,),
          SizedBox(height: 8.h,),
          CustomImageView(
            imagePath: ImageConstant.imgEntertainment,
            height: 128.h,
            width: double.maxFinite,
            radius: BorderRadius.circular(16.h),
          )
        ],
      ),
    );
  }
  /// Section Widget
  Widget _buildOnlineSupportSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 12.h,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.h),
            decoration: AppDecoration.gradientBlueGrayToBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 3.h,
                  width: 3.h,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimaryContainer,
                    borderRadius: BorderRadius.circular(1.h),
                  ),
                ),
                SizedBox(height: 22.h),
                Text(
                  "lbl_helio".tr,
                  style: theme.textTheme.labelSmall,
                ),
                SizedBox(height: 26.h),
              ],
            ),
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_helio_50".tr,
                  style: CustomTextStyles.titleMediumLatoOnPrimary,
                ),
                Text(
                  "msg_valid_for_406_days".tr,
                  style: theme.textTheme.bodySmall,
                ),
                Text(
                  "msg_expiry_date_december".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          SizedBox(width: 16.h),
          CustomImageView(
            imagePath: ImageConstant.imgRightArrow,
            height: 14.h,
            width: 14.h,
          ),
        ],
      ),
    );
  }
  /// Section Widget
  Widget _buildGamesSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_games".tr,
                  style: CustomTextStyles.titleMediumBlack900,
                ),
                Spacer(),
                Text(
                  "lbl_see_more".tr,
                  style: CustomTextStyles.titleSmallLatoPrimary,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRightArrow,
                  height: 14.h,
                  width: 16.h,
                  margin: EdgeInsets.only(left: 6.h),
                )
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            width: double.maxFinite,
            child: Consumer<HomescreenProvider>(
              builder: (context, provider, child) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 16.h,
                    children: List.generate(
                      provider.iphone13miniFourInitialModelObj.listItemList.length,
                          (index) {
                        ListItemModel model = provider.iphone13miniFourInitialModelObj.listItemList[index];
                        return ListItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialCommunitySection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.social,
            height: 128.h,
            width: double.maxFinite,
            radius: BorderRadius.circular(16.h),
          ),
          Text(
            "Join Social Community",
            style: CustomTextStyles.titleLargeOnPrimary,
          )
        ],
      )
    );
  }

  onTapRowvectorone(BuildContext context){
    NavigatorService.pushNamed(
      AppRoutes.checksupportsScreen,
    );
  }


  Widget _buildRightDrawer(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6, // 60% of screen width
      height: MediaQuery.of(context).size.height * 0.6, // 60% of screen width
      // height: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text("Check Support"),
            onTap: () {
              _toggleDrawer();
              NavigatorService.pushNamed(AppRoutes.checksupportsScreen);
            },
          ),
          Divider(),
          ListTile(
            title: Text("Specification"),
            onTap: () {
              _toggleDrawer();
              NavigatorService.pushNamed(AppRoutes.checksupportsScreen);
            },
          ),
          Divider(),
          ListTile(
            title: Text("Service Center"),
            onTap: () {
              _toggleDrawer();
              NavigatorService.pushNamed(AppRoutes.checksupportsScreen);
            },
          ),
          Divider(),
          ListTile(
            title: Text("LOS Query"),
            onTap: () {
              _toggleDrawer();
              NavigatorService.pushNamed(AppRoutes.checksupportsScreen);
            },
          ),
        ],
      ),
    );
  }

}

