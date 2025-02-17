import 'package:flutter/material.dart';
import '../core/app_export.dart';


class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
    color: appTheme.black900,
  );
  static BoxDecoration get fillGray => BoxDecoration(
    color: appTheme.gray90001,
  );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
    color: theme.colorScheme.onPrimaryContainer,
  );
  static BoxDecoration get fillRed => BoxDecoration(
    color: appTheme.red500,
    image: DecorationImage(
      image: AssetImage(
        ImageConstant.imgNavHome,//imgPattern
      ),
      fit: BoxFit.fill,
    ),
  );

  // Gradient decorations
  static BoxDecoration get gradientBlueGrayToBlueGray => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, 0.04),
      end: Alignment(0.91, 0.98),
      colors: [appTheme.blueGray200, appTheme.blueGray400],
    ),
  );
  static BoxDecoration get gradientGrayToGray => BoxDecoration(
    // gradient: LinearGradient(
    //   begin: Alignment(0.5, 0),
    //   end: Alignment(0.5, 1),
    //   colors: [appTheme.gray100, appTheme.gray1001],
    // ),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFFF1F7FF),
        Color(0xFFF6F6F6),
      ],
    ),
  );

  static BoxDecoration get gradientRedCcToRed => BoxDecoration(
    gradient: const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Color(0xCCE22727),
        Color(0xCCE22727),
      ],

    ),

    // gradient: LinearGradient(
    //   begin: Alignment(0.01, 0.48),
    //   end: Alignment(0.99, 0.5),
    //   colors: [appTheme.red700, appTheme.red70000],
    // ),
  );
// Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
    color: theme.colorScheme.onPrimary,
    border: Border.all(
      color: appTheme.black900,
      width: 1.h,
      strokeAlign: BorderSide.strokeAlignOutside,
    ),
  );
  static BoxDecoration get outlineIndigoA => BoxDecoration(
    color: theme.colorScheme.onPrimary,
    border: Border.all(
      color: appTheme.indigoA2003,
      width: 1.h,
    ),
  );
  static BoxDecoration get outlinePrimary => BoxDecoration(
    color: theme.colorScheme.onPrimary,
    border: Border.all(
      color: theme.colorScheme.primary.withOpacity(0.2),
      width: 1.h,
    ),
  );

}
class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderTL24 => BorderRadius.vertical(
    top: Radius.circular(24.h),
  );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
    10.h,
  );

  static BorderRadius get roundedBorder16 => BorderRadius.circular(
    16.h,
  );

  static BorderRadius get roundedBorder24 => BorderRadius.circular(
    24.h,
  );

  static BorderRadius get roundedBorder4 => BorderRadius.circular(
    4.h,
  );
}