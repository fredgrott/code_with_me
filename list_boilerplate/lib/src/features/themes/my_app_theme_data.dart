// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Note: Based on example at:
//        https://github.com/flutter/gallery/blob/master/lib/themes/gallery_theme_data.dart
//
//       Keep in mind that with the FPW things that have their separate material and
//       cupertino builders for components and separate themes one has to detect
//       system brightness without needing a context and then select the appropriate
//       light or dark colors to use from MyAppThemeData.lightColorScheme or
//       MyAppThemeData.darkColorScheme  ie detect brightness:
//
//          var brightness = SchedulerBinding.instance!.window.platformBrightness;
//          bool isDarkMode = brightness == Brightness.dark;

import 'package:flutter/material.dart';
import 'package:list_boilerplate/src/features/themes/app_palette.dart';

import 'package:list_boilerplate/src/features/themes/my_app_textstyles.dart';


import 'package:list_boilerplate/src/features/themes/my_material_card_theme.dart';
import 'package:list_boilerplate/src/features/themes/my_material_data_table_theme_data.dart';

import 'package:list_boilerplate/src/features/themes/my_material_elevated_button_theme_data.dart';

import 'package:list_boilerplate/src/features/themes/my_material_outline_button_theme_data.dart';
import 'package:list_boilerplate/src/features/themes/my_material_page_transition_theme.dart';

import 'package:list_boilerplate/src/features/themes/my_material_scrollbar_theme_data.dart';

import 'package:list_boilerplate/src/features/themes/my_material_switch_theme_data.dart';

import 'package:list_boilerplate/src/features/themes/my_material_text_button_theme_data.dart';

import 'package:list_boilerplate/src/features/themes/my_material_tooltip_theme_data.dart';
import 'package:list_boilerplate/src/features/themes/mytypography.dart';

// ignore: avoid_classes_with_only_static_members
class MyAppThemeData {
  // the component colors that do not properly flow yet through
  // colorscheme
  static const _lightAppBarColor = Colors.white;
  static const _darkAppBarColor = Colors.black87;
  static const _lightLeadingAppBarIconColor = Colors.white;
  static final _darkLeadingAppbarIconColor = Colors.white.withOpacity(0.12);
  static const _lightActionsAppBarIconColor = Colors.white;
  static final _darkActionsAppBarIconColor = Colors.white.withOpacity(0.12);
  static const _lightBannerColor = Colors.white;
  static const _darkBannerColor = Colors.black54;
  static const _lightBottomAppBarColor = Colors.white;
  static const _darkBottomAppBarColor = Colors.black87;
  static const _lightBottomNavBarColor = Colors.white;
  static const _darkBottomNavBarColor = Colors.black87;
  static const _lightBottomNavBarSeletectedIconColor = Colors.white;
  static final _darkBottomNavBarSelectedIconColor =
      Colors.white.withOpacity(0.12);
  static const _lightBottomNavBarUnSelectedIconColor = Colors.white;
  static final _darkBottomNavBarUnSelectedIconColor =
      Colors.white.withOpacity(0.12);
  static const _lightBottomNavBarSelectedItemColor = Colors.white;
  static final _darkBottomNavBarSelectedItemColor =
      Colors.white.withOpacity(0.12);
  static const _lightBottomNavBarUnselectedItemColor = Colors.white;
  static final _darkBottomNavBarUnselectedItemColor =
      Colors.white.withOpacity(0.12);
  static const _lightBottomNavBarSelectedLabelColor = Colors.white;
  static final _darkBottomNavBarSelectedLabelColor =
      Colors.white.withOpacity(0.12);
  static const _lightBottomNavBarUnselectedLabelColor = Colors.white;
  static final _darkBottomNavBarUnselectedLabelColor =
      Colors.white.withOpacity(0.12);

  static const _lightCanvasColor = Colors.white;
  static const _darkCanvasColor = Colors.black45;

  static const _lightFillColor = Colors.red;
  static const _darkFillColor = Colors.redAccent;

  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);

  static ThemeData lightThemeData = themeData(
    lightColorScheme,
    _lightFocusColor,
    Brightness.light,
    _lightAppBarColor,
  );
  static ThemeData darkThemeData = themeData(
    darkColorScheme,
    _darkFocusColor,
    Brightness.dark,
    _darkAppBarColor,
  );

  // Gallery Samples has it slightly wrong as need to set the
  // colors that are not flowing through components as colorscheme
  // in the themeData constructor as vars supplied in the lightThemeData and
  // the darkThemeData functions as otherwise the appbar, bottombar, navbar,
  // canvas, card, etc are the wrong color during dark mode.

  // ignore: long-method
  static ThemeData themeData(
    ColorScheme colorScheme,
    Color focusColor,
    Brightness myBrightness,
    Color appBarColor,
  ) {
    return ThemeData(
      brightness: myBrightness,
      colorScheme: colorScheme,
      canvasColor: colorScheme.background,
      dialogBackgroundColor: Colors.white60,
      disabledColor: Colors.grey,
      focusColor: focusColor,
      highlightColor: Colors.transparent,
      // flutter 2.5.0 has a hard error on primary color
      primaryColor: Colors.white,
      primaryColorBrightness: myBrightness,
      primaryColorDark: Colors.white,
      primaryColorLight: const Color(0xffaa00ff),
      scaffoldBackgroundColor: colorScheme.background,
      secondaryHeaderColor: colorScheme.secondaryVariant,
      selectedRowColor: colorScheme.secondary,
      shadowColor: Colors.black87,
      splashColor: colorScheme.primaryVariant,
      toggleableActiveColor: colorScheme.secondary,
      unselectedWidgetColor: colorScheme.secondaryVariant,

      visualDensity: VisualDensity.adaptivePlatformDensity,

      typography: Typography(
        black: myBlack,
        white: myWhite,
        englishLike: myEnglishLike,
        dense: myDense,
        tall: myTall,
      ),

      // Themes

      // Changes for FPW in which case separate material appbar theme data and cupertino
      // nav bar theme data are supplied to the FPW builders ro the PlatformAppABr component
      appBarTheme: AppBarTheme(
        // settings this per dark mode to the android dark mode color
        backgroundColor: appBarColor,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: colorScheme.secondary),
        actionsIconTheme: IconThemeData(color: colorScheme.secondaryVariant),
      ),
      bannerTheme: MaterialBannerThemeData(
        leadingPadding: EdgeInsetsGeometry.infinity,
        padding: EdgeInsetsGeometry.infinity,
        contentTextStyle: myBannerContentTextStyle,
        backgroundColor: colorScheme.background,
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        elevation: 4,
        color: Colors.brown,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 10,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        enableFeedback: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: colorScheme.background,
        selectedIconTheme: IconThemeData(
          opacity: 0,
          size: 45,
          color: colorScheme.primaryVariant,
        ),
        unselectedIconTheme: IconThemeData(
          opacity: 0,
          size: 45,
          color: colorScheme.secondaryVariant,
        ),
        selectedItemColor: colorScheme.primaryVariant,
        unselectedItemColor: colorScheme.secondary,
        unselectedLabelStyle: myUnselectedLabelStyle,
        selectedLabelStyle: mySelectedLabelStyle,
      ),
      buttonTheme: ButtonThemeData(
        colorScheme: colorScheme,
        padding: EdgeInsetsGeometry.infinity,
        alignedDropdown: true,
        // ignore: avoid_redundant_argument_values
        layoutBehavior: ButtonBarLayoutBehavior.padded,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        disabledColor: Colors.grey,
        minWidth: 40,
        height: 20,
        materialTapTargetSize: MaterialTapTargetSize.padded,
        buttonColor: colorScheme.primary,
        textTheme: ButtonTextTheme.primary,
      ),
      cardTheme: myMaterialCardTheme,
      dataTableTheme: myMaterialDataTableThemeData,
      dialogTheme: DialogTheme(
        backgroundColor: colorScheme.background,
        elevation: 12,
        titleTextStyle: myMaterialDialogTitleTextStyle,
        contentTextStyle: myMaterialDialogContentTextStyle,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      dividerTheme: DividerThemeData(
        color: colorScheme.secondaryVariant,
        thickness: 10,
        indent: 2,
        space: 2,
        endIndent: 2,
      ),
      elevatedButtonTheme: myMaterialElevatedButtonThemeData,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        enableFeedback: true,
        elevation: 10,
        splashColor: colorScheme.primaryVariant,
        focusColor: colorScheme.secondary,
        hoverColor: colorScheme.secondaryVariant,
        foregroundColor: colorScheme.surface,
        backgroundColor: colorScheme.background,
        disabledElevation: 8,
        focusElevation: 14,
        hoverElevation: 16,
        highlightElevation: 18,
      ),
      iconTheme: IconThemeData(
        opacity: 0,
        size: 45,
        color: colorScheme.secondaryVariant,
      ),

      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: colorScheme.background,
        elevation: 10,
        groupAlignment: 10,
        labelType: NavigationRailLabelType.selected,
      ),
      outlinedButtonTheme: myMaterialOutlineButtonThemeData,
      pageTransitionsTheme: myMaterialPageTransitionTheme,
      popupMenuTheme: PopupMenuThemeData(
        elevation: 4,
        color: colorScheme.primary,
        enableFeedback: true,
        textStyle: myMaterialPopupMenuTextStyle,
        shape: const RoundedRectangleBorder(),
      ),
      radioTheme: RadioThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        materialTapTargetSize: MaterialTapTargetSize.padded,
        splashRadius: 14,
        mouseCursor: MaterialStateProperty.all(MouseCursor.defer),
        fillColor: MaterialStateProperty.all(colorScheme.primaryVariant),
        overlayColor: MaterialStateProperty.all(colorScheme.secondaryVariant),
      ),
      scrollbarTheme: myMaterialScrollbarThemeData,
      snackBarTheme: SnackBarThemeData(
        backgroundColor: colorScheme.background,
        elevation: 4,
        behavior: SnackBarBehavior.fixed,
        actionTextColor: colorScheme.primaryVariant,
        disabledActionTextColor: colorScheme.secondaryVariant,
        contentTextStyle: mySnackbarTextStyle,
      ),
      switchTheme: myMaterialSwitchThemeData,
      tabBarTheme: TabBarTheme(
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: colorScheme.primary,
        labelPadding: EdgeInsetsGeometry.infinity,
        unselectedLabelColor: colorScheme.secondaryVariant,
        labelStyle: myTabbarLabelTextStyle,
        unselectedLabelStyle: myTabbarUnselectedLabelTextStyle,
      ),
      textButtonTheme: myMaterialTextButtonThemeData,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: colorScheme.primaryVariant,
        selectionColor: colorScheme.secondaryVariant,
        selectionHandleColor: colorScheme.primary,
      ),
      textTheme: myBaseTextTheme,
      timePickerTheme: TimePickerThemeData(
        backgroundColor: colorScheme.background,
        hourMinuteColor: colorScheme.primary,
        hourMinuteTextColor: colorScheme.primaryVariant,
        dayPeriodColor: colorScheme.secondary,
        dayPeriodTextColor: colorScheme.secondaryVariant,
        dialBackgroundColor: colorScheme.primaryVariant,
        dialTextColor: colorScheme.primary,
        dialHandColor: colorScheme.secondary,
        entryModeIconColor: colorScheme.secondaryVariant,
        helpTextStyle: myTimePickerHelpTextStyle,
        hourMinuteTextStyle: myTimePickerHourTextStyle,
        dayPeriodTextStyle: myTimePickerDayTextStyle,
      ),
      toggleButtonsTheme: ToggleButtonsThemeData(
        borderWidth: 12,
        // ignore: avoid_redundant_argument_values
        borderRadius: const BorderRadius.horizontal(
          // ignore: avoid_redundant_argument_values
          left: Radius.zero,
          // ignore: avoid_redundant_argument_values
          right: Radius.zero,
        ),
        disabledBorderColor: Colors.grey,
        color: colorScheme.primary,
        selectedColor: colorScheme.primaryVariant,
        fillColor: colorScheme.secondary,
        focusColor: focusColor,
        highlightColor: colorScheme.secondary,
        hoverColor: colorScheme.secondaryVariant,
        splashColor: colorScheme.primaryVariant,
        borderColor: colorScheme.secondaryVariant,
        selectedBorderColor: colorScheme.primary,
      ),
      tooltipTheme: myMaterialTooltipThemeData,
    );
  }

  static  ColorScheme lightHighContrastColorScheme = const ColorScheme(
    primary: Colors.white,
    primaryVariant: Colors.white,
    secondary: Colors.white,
    secondaryVariant: Colors.white,
    surface: Colors.white,
    background: Colors.white,
    error: _lightFillColor,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.white,
    onBackground: Colors.white,
    onError: Colors.white,
    brightness: Brightness.light,
  );

  static  ColorScheme lightColorScheme = const ColorScheme(
    primary: Colors.white,
    primaryVariant: Colors.white,
    secondary: Colors.white,
    secondaryVariant: Colors.white,
    surface: Colors.white,
    background: Colors.white,
    error: _lightFillColor,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.white,
    onBackground: Colors.white,
    onError: Colors.white,
    brightness: Brightness.light,
  );

  static ColorScheme darkColorScheme = const ColorScheme(
    primary: Colors.white,
    primaryVariant: Colors.white,
    secondary: Colors.white,
    secondaryVariant: Colors.white,
    surface: Colors.white,
    background: Colors.white,
    error: _darkFillColor,
    onPrimary: _darkFillColor,
    onSecondary: _darkFillColor,
    onSurface: _darkFillColor,
    onBackground: _darkFillColor,
    onError: Colors.white,
    brightness: Brightness.dark,
  );

  static ColorScheme darkHighContrastColorScheme = const ColorScheme(
    primary: Colors.white,
    primaryVariant: Colors.white,
    secondary: Colors.white,
    secondaryVariant: Colors.white,
    surface: Colors.white,
    background: Colors.white,
    error: _darkFillColor,
    onPrimary: _darkFillColor,
    onSecondary: _darkFillColor,
    onSurface: _darkFillColor,
    onBackground: _darkFillColor,
    onError: Colors.white,
    brightness: Brightness.dark,
  );
}
