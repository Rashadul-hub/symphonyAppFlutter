import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }
}

class CustomTextStyles {
  // Label text style
  static TextStyle get labelLargeOnPrimary =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.8),
      );

  // Title text style
  static TextStyle get titleLargeOnPrimary =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleMediumBlack900 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleMediumBlack900Bold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.0,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleMediumBlack900_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );

  static TextStyle get titleMediumGray900 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleMediumLatoOnPrimary =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleMediumOnPrimary =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 18.0,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleMediumOnPrimarySemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleMediumOnPrimary_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static TextStyle get titleMediumPrimary =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleMediumPrimary_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static TextStyle get titleSmallBlack900 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.4),
      );
  static TextStyle get titleSmallBlack900_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
      );
  static TextStyle get titleSmallLatoPrimary =>
      theme.textTheme.titleSmall!.lato.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleSmallOnPrimary =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.4),
      );
  static TextStyle get titleSmallPrimary =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmall_1 => theme.textTheme.titleSmall!;
}