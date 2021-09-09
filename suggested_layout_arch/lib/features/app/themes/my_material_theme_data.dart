// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:suggested_layout_arch/features/app/themes/my_app_button_theme_data.dart';
import 'package:suggested_layout_arch/features/app/themes/my_app_textstyles.dart';
import 'package:suggested_layout_arch/features/app/themes/my_material_appbar_theme.dart';
import 'package:suggested_layout_arch/features/app/themes/my_material_banner_theme_data.dart';
import 'package:suggested_layout_arch/features/app/themes/my_material_bottom_appbar_theme_data.dart';
import 'package:suggested_layout_arch/features/app/themes/my_material_bottom_navigationbar_theme_data.dart';
import 'package:suggested_layout_arch/features/app/themes/my_material_card_theme.dart';
import 'package:suggested_layout_arch/features/app/themes/my_material_data_table_theme_data.dart';
import 'package:suggested_layout_arch/features/app/themes/my_material_dialog_theme.dart';
import 'package:suggested_layout_arch/features/app/themes/my_material_divider_theme_data.dart';
import 'package:suggested_layout_arch/features/app/themes/my_material_elevated_button_theme_data.dart';
import 'package:suggested_layout_arch/features/app/themes/my_material_floating_action_bar_theme_data.dart';
import 'package:suggested_layout_arch/features/app/themes/my_material_icon_theme_data.dart';
import 'package:suggested_layout_arch/features/app/themes/my_material_outline_button_theme_data.dart';
import 'package:suggested_layout_arch/features/app/themes/my_material_page_transition_theme.dart';
import 'package:suggested_layout_arch/features/app/themes/my_material_popup_menu_theme_data.dart';
import 'package:suggested_layout_arch/features/app/themes/my_material_radio_theme_data.dart';
import 'package:suggested_layout_arch/features/app/themes/my_material_rail_navigation_theme_data.dart';
import 'package:suggested_layout_arch/features/app/themes/my_material_scrollbar_theme_data.dart';
import 'package:suggested_layout_arch/features/app/themes/my_material_snackbar_theme_data.dart';
import 'package:suggested_layout_arch/features/app/themes/my_material_tab_bar_theme_data.dart';
import 'package:suggested_layout_arch/features/app/themes/my_material_text_button_theme_data.dart';
import 'package:suggested_layout_arch/features/app/themes/my_material_text_selection_theme_data.dart';
import 'package:suggested_layout_arch/features/app/themes/my_material_time_picker_theme_data.dart';
import 'package:suggested_layout_arch/features/app/themes/my_material_toggle_button_theme_data.dart';
import 'package:suggested_layout_arch/features/app/themes/my_material_tooltip_theme_data.dart';



ThemeData lightTheme =
    ThemeData.from(colorScheme: const ColorScheme.light()).copyWith(
  cardTheme: myMaterialCardTheme,
  textTheme:  myBaseTextTheme,
  buttonTheme: myMaterialButtonThemeData,
  bannerTheme: myMaterialBannerThemeData,
  bottomAppBarTheme: myMaterialBottomAppbarTheme,
  // FPW?
  bottomNavigationBarTheme: myMaterialBottomNavigationBarThemeData,
  iconTheme: myMaterialIconThemeData,
  floatingActionButtonTheme: myMaterialFloatingActionBarThemeData,
  // FPW?
  appBarTheme: myMaterialAppBarTheme,
  dataTableTheme: myMaterialDataTableThemeData,
  // FPW?
  dialogTheme: myMaterialDialogTheme,
  dividerTheme: myMaterialDividerThemeData,
  elevatedButtonTheme: myMaterialElevatedButtonThemeData,
  navigationRailTheme: myMaterialNavigationRailThemeData,
  outlinedButtonTheme: myMaterialOutlineButtonThemeData,
  pageTransitionsTheme: myMaterialPageTransitionTheme,
  popupMenuTheme: myMaterialPopupMenuThemeData,
  radioTheme: myMaterialRadioThemeData,
  scrollbarTheme: myMaterialScrollbarThemeData,
  // FPW provided so we need to do a MaterialSliderData and CupertinoSliderData in the
  // Material and Cupertino builder blocks of the PlatformSlider instead
  //sliderTheme: myMaterialSliderThemeData,
  snackBarTheme: myMaterialSnackbarThemeData,
  // FPW provided so we need to do a MaterialSwitchData and a CupertinoSwitchData instead which
  // gets used in the PlatformSwitch material and cupertino builder blocks
  //switchTheme: myMaterialSwitchThemeData,
  tabBarTheme: myMaterialTabBarTheme,
  textButtonTheme: myMaterialTextButtonThemeData,
  textSelectionTheme: myMaterialTextSelectionThemeData,
  timePickerTheme: myMaterialTimePickerThemeData,
  toggleButtonsTheme: myMaterialToggleButtonThemeData,
  tooltipTheme: myMaterialTooltipThemeData,
);

ThemeData darkTheme =
    ThemeData.from(colorScheme: const ColorScheme.dark()).copyWith(
  cardTheme: myMaterialCardTheme,
  textTheme:  myBaseTextTheme,
  buttonTheme: myMaterialButtonThemeData,
  bannerTheme: myMaterialBannerThemeData,
  bottomAppBarTheme: myMaterialBottomAppbarTheme,
  // FPW?
  bottomNavigationBarTheme: myMaterialBottomNavigationBarThemeData,
  iconTheme: myMaterialIconThemeData,
  floatingActionButtonTheme: myMaterialFloatingActionBarThemeData,
  // FPW?
  appBarTheme: myMaterialAppBarTheme,
  dataTableTheme: myMaterialDataTableThemeData,
  // FPW?
  dialogTheme: myMaterialDialogTheme,
  dividerTheme: myMaterialDividerThemeData,
  elevatedButtonTheme: myMaterialElevatedButtonThemeData,
  navigationRailTheme: myMaterialNavigationRailThemeData,
  outlinedButtonTheme: myMaterialOutlineButtonThemeData,
  pageTransitionsTheme: myMaterialPageTransitionTheme,
  popupMenuTheme: myMaterialPopupMenuThemeData,
  radioTheme: myMaterialRadioThemeData,
  scrollbarTheme: myMaterialScrollbarThemeData,
  // FPW provided so we need to do a MaterialSliderData and CupertinoSliderData in the
  // Material and Cupertino builder blocks of the PlatformSlider instead
  //sliderTheme: myMaterialSliderThemeData,
  snackBarTheme: myMaterialSnackbarThemeData,
  // FPW provided so we need to do a MaterialSwitchData and a CupertinoSwitchData instead which
  // gets used in the PlatformSwitch material and cupertino builder blocks
  //switchTheme: myMaterialSwitchThemeData,
  tabBarTheme: myMaterialTabBarTheme,
  textButtonTheme: myMaterialTextButtonThemeData,
  textSelectionTheme: myMaterialTextSelectionThemeData,
  timePickerTheme: myMaterialTimePickerThemeData,
  toggleButtonsTheme: myMaterialToggleButtonThemeData,
  tooltipTheme: myMaterialTooltipThemeData,
);
