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
  int selectedIndex = 0;

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
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimary,
        border: Border(
          top: BorderSide(
            color: appTheme.indigo50,
            width: 2.h,
          ),
          left: BorderSide(
            color: appTheme.indigo50,
            width: 2.h,
          ),
          right: BorderSide(
            color: appTheme.indigo50,
            width: 2.h,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900
                .withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -6,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: List.generate(
              bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                    CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath:
                        bottomMenuList[index]
                            .icon,
                    height: 24.h,
                    width: 26.h,
                    color: appTheme.black900,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    bottomMenuList[index].title ??
                        "",
                    style: CustomTextStyles
                        .titleSmallBlack900
                        .copyWith(
                      color: appTheme.black900
                          .withOpacity(0.4),
                    ),
                  ),
                ],
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                    CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath:
                        bottomMenuList[index]
                            .activeIcon,
                    height: 24.h,
                    width: 24.h,
                    color:
                        theme.colorScheme.primary,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    bottomMenuList[index].title ??
                        "",
                    style: CustomTextStyles
                        .titleSmallPrimary
                        .copyWith(
                      color: theme
                          .colorScheme.primary,
                    ),
                  ),
                ],
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex = index;
            widget.onChanged?.call(
                bottomMenuList[index].type);
            setState(() {});
          }),
    );
  }
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