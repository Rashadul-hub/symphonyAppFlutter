import 'package:flutter/material.dart';


const num FIGMA_DESIGN_WIDTH = 375;
const num FIGMA_DESIGN_HEIGHT = 812;
const num FIGMA_DESIGN_STATUS_BAR = 0;

extension ResponsiveExtension on num {
  double? get _width => SizeUtils.width;
  double get h => ((this * _width!) / FIGMA_DESIGN_WIDTH);
  double get fSize => ((this * _width!) / FIGMA_DESIGN_WIDTH);
}

extension FormatExtension on double {
  double toDoubleValue({int fractionDigits = 2}) {
    return double.parse(this.toStringAsFixed(fractionDigits));
  }

  double isNonZero({num defaultValue = 0.0}) {
    return this > 0 ? this : defaultValue.toDouble();
  }
}

enum DeviceType { mobile, tablet, desktop }

typedef ResponsiveBuild = Widget Function(
    BuildContext context,
    Orientation orientation,
    DeviceType deviceType,
    );

class Sizer extends StatelessWidget {
  const Sizer({Key? key, required this.builder}) : super(key: key);

  final ResponsiveBuild builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeUtils.setScreenSize(constraints, orientation);
        return builder(context, orientation, SizeUtils.deviceType);
      });
    });
  }
}
class SizeUtils {


  /// Device's BoxConstraints
  static late BoxConstraints boxConstraints;

  /// Device's Orientation
  static late Orientation orientation;

  /// Type of Device
  static late DeviceType deviceType;

  /// Device's Height
  // static late double height;
  static double? height;

  /// Device's Width
  // static late double width;
  static double? width;

  static void setScreenSize(
      BoxConstraints constraints,
      Orientation currentOrientation,
      ) {
    // if (height == null) {
    //   height = constraints.maxHeight; // or whatever logic you need
    // }
    boxConstraints = constraints;
    orientation = currentOrientation;
    if (orientation == Orientation.portrait) {
      width =
          boxConstraints.maxWidth.isNonZero(defaultValue: FIGMA_DESIGN_WIDTH);
      height = boxConstraints.maxHeight.isNonZero();
      // height = boxConstraints.maxHeight.isNonZero(defaultValue: FIGMA_DESIGN_HEIGHT);
    } else {
      width =
          boxConstraints.maxHeight.isNonZero(defaultValue: FIGMA_DESIGN_WIDTH);
      height = boxConstraints.maxWidth.isNonZero();
      // height = boxConstraints.maxWidth.isNonZero(defaultValue: FIGMA_DESIGN_HEIGHT);
    }
    deviceType = DeviceType.mobile;
  }
}