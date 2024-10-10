import 'package:flutter/material.dart';

import 'app_color.dart';
import 'app_textstyle.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    splashColor: splashColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      backgroundColor: appBarBackgroundColor,
      scrolledUnderElevation: 0,
      elevation: 0,
      titleSpacing: 0.0,
      centerTitle: true,
      iconTheme: const IconThemeData(color: Color(0xFF000000)),
      titleTextStyle: AppTextStyle.medium20(primaryColor),
    ),
    scaffoldBackgroundColor: scaffoldBackgroundColor,
    primaryColor: primaryColor,
    primaryColorLight: const Color(0xFFE5E5E5),
    primaryColorDark: const Color(0xFFE5E5E5),
    brightness: Brightness.light,
    // cardColor: Color(0xFFE5E5E5),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: primaryColor,
      selectionColor: Color(0xFFFFFFFF),
      selectionHandleColor: primaryColor,
    ),
    colorScheme: const ColorScheme(
      primary: primaryColor,
      secondary: secondaryColor,
      surface: Color(0xFFE5E5E5),
      error: AppColors.errorRedColor,
      onPrimary: Color(0xFFE5E5E5),
      onSecondary: Color(0xFFE5E5E5),
      onSurface:primaryColor,
      onError: errorColor,
      brightness: Brightness.light,
    ),
    datePickerTheme: DatePickerThemeData(
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      headerBackgroundColor: primaryColor,
      headerForegroundColor: Colors.white,
      dayOverlayColor:
          WidgetStateProperty.all(AppColors.overlayColor),
      todayBorder: const BorderSide(color: primaryColor),
    ),
  );

  static const Color appBarBackgroundColor = Color(0xFF000000);
  static const Color scaffoldBackgroundColor = Color(0xFF000000);
  static const Color primaryColor = Color(0xFFFFFFFF);
  static const Color secondaryColor = Color(0xFFE5E5E5);
  // static const Color accentColor = Color(0xFFE5E5E5);
  // static const Color primaryTextColor = Color(0xFFE5E5E5);
  // static const Color secondaryTextColor = Color(0xFFE5E5E5);
  // static const Color primaryButtonColor = Color(0xFFE5E5E5);
  // static const Color secondaryButtonColor = Color(0xFFE5E5E5);
  // static const Color primaryButtonTextColor = Color(0xFFE5E5E5);
  // static const Color secondaryButtonTextColor = Color(0xFFE5E5E5);
  // static const Color primaryIconColor = Color(0xFFE5E5E5);
  // static const Color secondaryIconColor = Color(0xFFE5E5E5);
  // static const Color primaryDividerColor = Color(0xFFE5E5E5);
  // static const Color secondaryDividerColor = Color(0xFFE5E5E5);
  // static const Color shadowColor = Color(0xFFE5E5E5);
  static const Color errorColor = Color(0xFFd32f2f);
  // static const Color successColor = Color(0xFFE5E5E5);
  // static const Color warningColor = Color(0xFFE5E5E5);
  // static const Color infoColor = Color(0xFFE5E5E5);
  // static const Color disabledColor = Color(0xFFE5E5E5);
  // static const Color focusColor = Color(0xFFE5E5E5);
  // static const Color hoverColor = Color(0xFFE5E5E5);
  // static const Color highlightColor = Color(0xFFE5E5E5);
  static const Color splashColor = Color(0xFF3B3034);
  // static const Color selectedRowColor = Color(0xFFE5E5E5);
  // static const Color unselectedWidgetColor = Color(0xFFE5E5E5);
  // static const Color toggleableActiveColor = Color(0xFFE5E5E5);
  static const Color dialogBackgroundColor = Color(0xFFE5E5E5);
  // static const Color indicatorColor = Color(0xFFE5E5E5);
  static const Color hintColor = Color(0x803B3034);
  static const Color inputDecorationColor = Color(0xFFE5E5E5);
  static const Color inputDecorationFillColor = Color(0xFFE5E5E5);
  static const Color inputDecorationFocusColor = Color(0xFFE5E5E5);
  static const Color inputDecorationHoverColor = Color(0xFFE5E5E5);
  static const Color inputDecorationErrorColor = Color(0xFFE5E5E5);
  static const Color inputDecorationDisabledColor = Color(0xFFE5E5E5);
  static const Color inputDecorationLabelColor = Color(0xFFE5E5E5);
  static Color inputDecorationHintColor = const Color(0xFF3B3034).withOpacity(.5);
  static const Color inputDecorationPrefixIconColor = Color(0xFFE5E5E5);
  static const Color inputDecorationSuffixIconColor = Color(0xFFE5E5E5);
  static const Color inputDecorationCounterStyleColor = Color(0xFFE5E5E5);
  static const Color inputDecorationHelperStyleColor = Color(0xFFE5E5E5);
  static const Color inputDecorationErrorStyleColor = Color(0xFFE5E5E5);
  static const Color inputDecorationFocusedBorderSideColor = Color(0xFFE5E5E5);
  static const Color inputDecorationEnabledBorderSideColor = Color(0xFFE5E5E5);
  static const Color inputDecorationBorderSideColor = Color(0xFFE5E5E5);
  static const Color inputDecorationErrorBorderSideColor = Color(0xFFE5E5E5);
  static const Color inputDecorationFocusedErrorBorderSideColor =
      Color(0xFFE5E5E5);
  static const Color inputDecorationDisabledBorderSideColor = Color(0xFFE5E5E5);

  static const Color inputDecorationFocusedBorderErrorBorderSideColor =
      Color(0xFFE5E5E5);
  static const Color inputDecorationFocusedErrorBorderErrorBorderSideColor =
      Color(0xFFE5E5E5);
  static const Color inputDecorationErrorBorderErrorBorderSideColor =
      Color(0xFFE5E5E5);
  static const Color inputDecorationDisabledBorderErrorBorderSideColor =
      Color(0xFFE5E5E5);
}
