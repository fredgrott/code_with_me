// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ui';

import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:list_boilerplate/src/features/themes/app_palette.dart';
import 'package:mocktail/mocktail.dart';

// Purpose is to detect dark mode as since the settings of
// whether isDark or not is rebuilt via change notifier at
// root of widget tree we can do some fancy fixing of the
// crap mess of widgets not yet colorscheme converted.
Brightness brightness = SchedulerBinding.instance!.window.platformBrightness;
bool isDarkMode = brightness == Brightness.dark;

// We cheat as we do not want this coupled either to MaterialApp, CupertinoApp, or in the FPW case
// PlatformApp to generate the build context and hence we mock one instead. Does require
// mocktail also be on dependencies dep not just dev_dependencies.
class MockBuildContext extends Mock implements BuildContext {}

MockBuildContext myContext = MockBuildContext();

bool userRequestedThemeHighContrast = false;

bool myHighContrast = isHighContrast();

// note, that since we can set isHighContrast in our switch or overlay menu when
// choosing a high contrast then we effectively can have high contrast on non Apple platforms which
// might be somewhat a brand feature win.
bool isHighContrast() {
  final bool isPlatformHighContrast = MediaQuery.of(myContext).highContrast;

  // that way is we want to have high contrast on non Apple platforms the only additional
  // thing would be to wire up a theme chooser for the user that includes high contrast themes.
  if (isPlatformHighContrast) {
    userRequestedThemeHighContrast = true;
  }

  return isPlatformHighContrast;
}

Color? dropDownEnabledIconColor() {
  // ignore: unused_local_variable
  late Color myDropDownEnabledIconColor;

  return myDropDownEnabledIconColor = isDarkMode
      ? myHighContrast
          ? darkHighContrastPrimaryColor
          : darkPrimaryColor
      : myHighContrast
          ? lightHighContrastPrimaryColor
          : lightPrimaryColor;
}

Color? dropDownDisabledIconColor() {
  // ignore: unused_local_variable
  late Color myDropDownDisabledIconColor;

  return myDropDownDisabledIconColor = isDarkMode
      ? myHighContrast
          ? darkHighContrastDisabledIconColor
          : darkDisabledIconColor
      : myHighContrast
          ? lightHighContrastDisabledIconColor
          : lightDisabledIconColor;
}

Color? dropDownFocusColor() {
  // ignore: unused_local_variable
  late Color myDropDownFocusColor;

  return myDropDownFocusColor = isDarkMode
      ? myHighContrast
          ? darkHighContrastPrimaryColor
          : darkPrimaryColor
      : myHighContrast
          ? lightHighContrastPrimaryColor
          : lightPrimaryColor;
}

Color? dropDownColor() {
  // ignore: unused_local_variable
  late Color myDropDownColor;

  return myDropDownColor = isDarkMode
      ? myHighContrast
          ? darkHighContrastSecondaryColor
          : darkSecondaryColor
      : myHighContrast
          ? lightHighContrastSecondaryColor
          : lightSecondaryColor;
}

Color? listTileFocusColor() {
  // ignore: unused_local_variable
  late Color myListTileFocusColor;

  return myListTileFocusColor = isDarkMode
      ? myHighContrast
          ? darkHighContrastSecondaryVariantColor
          : darkSecondaryVariantColor
      : myHighContrast
          ? lightHighContrastSecondaryVariantColor
          : lightSecondaryVariantColor;
}

Color? listTileHoverColor() {
  // ignore: unused_local_variable
  late Color myListTileHoverColor;

  return myListTileHoverColor = isDarkMode
      ? myHighContrast
          ? darkHighContrastSecondaryToneColor
          : darkSecondaryToneColor
      : myHighContrast
          ? lightHighContrastSecondaryToneColor
          : lightSecondaryToneColor;
}

Color? listTileTileColor() {
  // ignore: unused_local_variable
  late Color myListTileTileColor;

  return myListTileTileColor = isDarkMode
      ? myHighContrast
          ? darkHighContrastSecondaryColor
          : darkSecondaryColor
      : myHighContrast
          ? lightHighContrastSecondaryColor
          : lightSecondaryToneColor;
}

Color? listTileSelectedTileColor() {
  // ignore: unused_local_variable
  late Color myListTileSelectedTileColor;

  return myListTileSelectedTileColor = isDarkMode 
      ? myHighContrast 
          ? darkHighContrastPrimaryVariantColor
          : darkPrimaryVariantColor 
      : myHighContrast 
          ? lightHighContrastPrimaryVariantColor  
          : lightPrimaryVariantColor;
}
