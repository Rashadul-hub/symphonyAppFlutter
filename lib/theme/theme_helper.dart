import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../core/utils/pref_utils.dart';


LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.

class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

  // A map of custom color themes supported by the app
  Map<String,
      LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

  // A map of color schemes supported by the app
  Map<String,
      ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ??
        LightCodeColors();
  }


  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ??
            ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                8),
          ),

          elevation: 0,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.black900.withOpacity(
                0.2),
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                8),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 5,
        space: 5,
        color: appTheme.black900.withOpacity(0.1),
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() =>
      _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();

}


/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
    bodySmall: TextStyle(
      color: colorScheme.onPrimary.withOpacity(0.6),
      fontSize: 12.0,
      fontFamily: 'Lato',
      fontWeight: FontWeight.w400,
    ),
    labelLarge: TextStyle(
      color: colorScheme.onPrimary.withOpacity(0.5),
      fontSize: 12.0,
      fontFamily: 'Urbanist',
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      color: colorScheme.onPrimary,
      fontSize: 8.0,
      fontFamily: 'Lato',
      fontWeight: FontWeight.w700,
    ),
    titleLarge: TextStyle(
      color: appTheme.green600,
      fontSize: 20.0,
      fontFamily: 'Urbanist',
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle(
      color: colorScheme.onPrimaryContainer,
      fontSize: 16.0,
      fontFamily: 'Urbanist',
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle(
      color: colorScheme.onPrimary,
      fontSize: 14.0,
      fontFamily: 'Urbanist',
      fontWeight: FontWeight.w500,
    ),
  );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0xFFFFF002B),
    primaryContainer: Color(0xFFFFCC16D),
    errorContainer: Color(0xFF873F30),
    onPrimary: Color(0xFFFFFFFF),
    onPrimaryContainer: Color(0xFF1F2022),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
// Amber
  Color get amber300 => Color(0xFFFFFD15B);

  Color get amber3001 => Color(0xFFFFFD15C);

  Color get amberA100 => Color(0xFFFFFE177);

// Black
  Color get black900 => Color(0xFF000000);

// Blue
  Color get blue400 => Color(0xFF4ACDB);

  Color get blue600 => Color(0xFF377DE2);

  Color get blueA200 => Color(0xFF478CF7);

// BlueGray
  Color get blueGray100 => Color(0xFFCFC9CDD3);

  Color get blueGray1001 => Color(0xFFF1D13D4);

  Color get blueGray200 => Color(0xFFA2C6B7);

  Color get blueGray400 => Color(0xFF77938E);

  Color get blueGray50 => Color(0xFFE6BEE2);

  Color get blueGray5001 => Color(0xFFF1F2F2);

  Color get blueGray700 => Color(0xFF415A6B);

// DeepOrange
  Color get deepOrange400 => Color(0xFFFF3705A);

// Gray
  Color get gray100 => Color(0xFF1F6FF);

  Color get gray1001 => Color(0xFFF6F6F6);

  Color get gray200 => Color(0xFFE8EA9);

  Color get gray20001 => Color(0xFFE6E7E8);

  Color get gray300 => Color(0xFFE0D3CE);

  Color get gray400 => Color(0xFFCDBFB);

  Color get gray800 => Color(0xFF63232B);

  Color get gray900 => Color(0xFF1A1A1A);

  Color get gray90001 => Color(0xFF181818);

// Green
  Color get green600 => Color(0xFF34A853);

  Color get greenA200 => Color(0xFF6C5F2);

// Indigo
  Color get indigo50 => Color(0xFF8EE6F6);

  Color get indigo500 => Color(0xFF3872B7);

  Color get indigo501 => Color(0xFF7E7EB2);

  Color get indigo800 => Color(0xFF254E87);

  Color get indigoA2003 => Color(0x334671FC);

// LightBlue
  Color get lightBlue200 => Color(0xFF7CCCF2);

  Color get lightBlueA400 => Color(0xFF00A4FF);

// Orange
  Color get orange400 => Color(0xFFFFCA62F);

  Color get orange40001 => Color(0xFFFFFA91A);

  Color get orange50 => Color(0xFFFFFF3DE);

  Color get orangeA700 => Color(0xFFFF6900);

// Pink
  Color get pink500 => Color(0xFFFB1466);

  Color get pinkA200 => Color(0xFFB3A82);

// Red
  Color get red300 => Color(0xFFE646F);

  Color get red400 => Color(0xFFE6B59);

  Color get red40001 => Color(0xFFB5D4F);

  Color get red500 => Color(0xFFFFF2C2);

  Color get red700 => Color(0xFFBC4142);

  Color get red70000 => Color(0x00D92525);

  Color get red70001 => Color(0xFF812F40);

  Color get red720C => Color(0xCCE222727);

  Color get red800 => Color(0xFFA34F41);

  Color get redA200 => Color(0xFFFD4755);

  Color get redA2001 => Color(0xFF94851);

// Teal
  Color get teal200 => Color(0xFF66CB69);

  Color get teal400 => Color(0xFFB29B3C);

  Color get tealA40001 => Color(0xFF2AC578);

  Color get tealA400 => Color(0xFF00F2A6);

  Color get tealA700 => Color(0xFF00CA93);

// Yellow
  Color get yellow700 => Color(0xFFEDC33E);

  Color get yellow800 => Color(0xFF6AB31);

  Color get yellow900 => Color(0xFF79219);
}