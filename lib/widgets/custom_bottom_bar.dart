import 'package:flutter/material.dart';
import '../core/app_export.dart';

enum BottomBarEnum { Website, Home, Social }

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() =>
      CustomBottomBarState();
}

class CustomBottomBarState
    extends State<CustomBottomBar> {
  int selectedIndex = 1;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavWebsite,
      activeIcon: ImageConstant.imgNavWebsite,
      title: "lbl_website".tr,
      type: BottomBarEnum.Website,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavHome,
      activeIcon: ImageConstant.imgNavHome,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavSocial,
      activeIcon: ImageConstant.imgNavSocial,
      title: "lbl_social".tr,
      type: BottomBarEnum.Social,
    )
  ];


  @override
  Widget build(BuildContext context) {
    // Get the screen width to compute scale factor.
    final screenWidth = MediaQuery.of(context).size.width;

    // The original design width is 375px.
    final scale = screenWidth / 375.0;

    // Compute scaled dimensions.
    final bottomBarHeight = 96.0 * scale; // scaled height
    final paddingValue = 16.0 * scale; // scaled padding
    final borderRadiusValue = 32.0 * scale; // scaled top border radius
    final borderWidth = 2.0 * scale; // scaled border width

    return Container(
      width: screenWidth, // full screen width
      height: bottomBarHeight,
      padding: EdgeInsets.all(paddingValue),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(borderRadiusValue),
          topRight: Radius.circular(borderRadiusValue),
        ),
        border: Border(
          top: BorderSide(
            color: Color(0xFFE8EEF6),
            width: borderWidth,
          ),
          left: BorderSide(
            color: Color(0xFFE8EEF6),
            width: borderWidth,
          ),
          right: BorderSide(
            color: Color(0xFFE8EEF6),
            width: borderWidth,
          ),
          // No bottom border
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -6 * scale),
            blurRadius: 15 * scale,
            color: Colors.black.withOpacity(0.15),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(bottomMenuList.length, (index) {
          final item = bottomMenuList[index];

          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
                widget.onChanged?.call(item.type);
              },
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    CustomImageView(
                      imagePath: selectedIndex == index ? item.activeIcon : item.icon,
                      // Scaled icon sizes (adjust if needed)
                      height: 24 * scale,
                      width: 26 * scale,
                      color: selectedIndex == index
                          ? Theme.of(context).colorScheme.primary
                          : appTheme.black900,
                    ),
                    SizedBox(height: 4 * scale),
                    Text(
                      item.title ?? "",
                      style: selectedIndex == index
                          ? CustomTextStyles.titleSmallPrimary.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      )
                          : CustomTextStyles.titleSmallBlack900.copyWith(
                        color: appTheme.black900.withOpacity(0.4),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     decoration: BoxDecoration(
  //       color: theme.colorScheme.onPrimary,
  //       border: Border(
  //         top: BorderSide(
  //           color: appTheme.indigo50,
  //           width: 2.h,
  //         ),
  //         left: BorderSide(
  //           color: appTheme.indigo50,
  //           width: 2.h,
  //         ),
  //         right: BorderSide(
  //           color: appTheme.indigo50,
  //           width: 2.h,
  //         ),
  //       ),
  //       boxShadow: [
  //         BoxShadow(
  //           color: appTheme.black900
  //               .withOpacity(0.15),
  //           spreadRadius: 2.h,
  //           blurRadius: 2.h,
  //           offset: Offset(
  //             0,
  //             -6,
  //           ),
  //         ),
  //       ],
  //     ),
  //     child: BottomNavigationBar(
  //         backgroundColor: Colors.transparent,
  //         showSelectedLabels: false,
  //         showUnselectedLabels: false,
  //         selectedFontSize: 0,
  //         elevation: 0,
  //         currentIndex: selectedIndex,
  //         type: BottomNavigationBarType.fixed,
  //         items: List.generate(
  //             bottomMenuList.length, (index) {
  //           return BottomNavigationBarItem(
  //             icon: Column(
  //               mainAxisSize: MainAxisSize.min,
  //               crossAxisAlignment:
  //                   CrossAxisAlignment.center,
  //               children: [
  //                 CustomImageView(
  //                   imagePath:
  //                       bottomMenuList[index]
  //                           .icon,
  //                   height: 24.h,
  //                   width: 26.h,
  //                   color: appTheme.black900,
  //                 ),
  //                 SizedBox(height: 4.h),
  //                 Text(
  //                   bottomMenuList[index].title ??
  //                       "",
  //                   style: CustomTextStyles
  //                       .titleSmallBlack900
  //                       .copyWith(
  //                     color: appTheme.black900
  //                         .withOpacity(0.4),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //             activeIcon: Column(
  //               mainAxisSize: MainAxisSize.min,
  //               crossAxisAlignment:
  //                   CrossAxisAlignment.center,
  //               children: [
  //                 CustomImageView(
  //                   imagePath:
  //                       bottomMenuList[index]
  //                           .activeIcon,
  //                   height: 24.h,
  //                   width: 24.h,
  //                   color:
  //                       theme.colorScheme.primary,
  //                 ),
  //                 SizedBox(height: 4.h),
  //                 Text(
  //                   bottomMenuList[index].title ??
  //                       "",
  //                   style: CustomTextStyles
  //                       .titleSmallPrimary
  //                       .copyWith(
  //                     color: theme
  //                         .colorScheme.primary,
  //                   ),
  //                 ),
  //               ],
  //             ),
  //             label: '',
  //           );
  //         }),
  //         onTap: (index) {
  //           selectedIndex = index;
  //           widget.onChanged?.call(
  //               bottomMenuList[index].type);
  //           setState(() {});
  //         }),
  //   );
  // }
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;
  String activeIcon;
  String? title;
  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}