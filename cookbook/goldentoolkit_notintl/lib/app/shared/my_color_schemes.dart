// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Note: There are Three distinct ways to crossplatform in flutter as far as
//      themes. One re-uses the Material Based Theme-Material color base
//      assumptions. Two assumes the Apple-ized FlatUI color styling.
//      The third one involves manually customizing CupertinoTheme.
//
//      My default go to method is to Materialize ie CupertinoBasedMaterialTheme
//      so I do not have to fully manually repeat everything. So I need a
//      central Palette. That requires me to flow the CupertinoColors
//      through my base palette so that contrast and dark are
//      correctly handled on iOS.

const Color myPrimaryColor = Color(0xff9c27b0); //purple500
const Color myPrimaryVariantColor = Color(0xff7b1fa2); //purple700
const Color mySecondaryColor = Color(0xff80cbc4); //teal200
const Color mySecondaryVariantColor = Color(0xff26a69a); //teal400
const Color myBackgroundColor = Color(0xffffffff); //white
const Color myOnBackgroundColor = Color(0xff000000); //black
const Color mySurfaceColor = Color(0xffffffff); //white
const Color myOnSurfaceColor = Color(0xff000000); //black
const Color myOnErrorColor = Color(0xff000000);//black
const Color myErrorColor = Color(0xffb00020);
const Color myOnPrimaryColor = Color(0xffffffff); //white
const Color myOnSecondaryColor = Color(0xff000000); //black
const Color myBarBackgroundColor = Color(0xff6a1b9a); //purple800
const Color myScaffoldBackgroundColor = Color(0xff4a148c); //purple900

// Dark Color is computed as 200 added to base color within the Material
// based color system palettes which is usually the variant
// The contrast is computed by switching to the accents for
// example primary contrast in purple base 500 would
// be A100 and dark color being A200
CupertinoDynamicColor myBasePrimaryColor =
    const CupertinoDynamicColor.withBrightnessAndContrast(
  color: myPrimaryColor, //purple 500
  darkColor: myPrimaryVariantColor, //purple700
  darkHighContrastColor: Color(0xff4a148c), //purple900
  highContrastColor: Color(0xffaa00ff), //purple A700
);

CupertinoDynamicColor myBasePrimaryVariantColor =
    const CupertinoDynamicColor.withBrightnessAndContrast(
  color: myPrimaryVariantColor, //purple700
  darkColor: Color(0xff4a148c), //purple900
  highContrastColor: Color(0xffd500f9), //purpleA400
  darkHighContrastColor: Color(0xffaa00ff), //purpleA700
);

CupertinoDynamicColor myBaseSecondaryColor =
    const CupertinoDynamicColor.withBrightnessAndContrast(
  color: mySecondaryColor, // teal 200
  darkColor: mySecondaryVariantColor, // teal 400
  highContrastColor: Color(0xff64ffda), // teal A200
  darkHighContrastColor: Color(0xff009688), // teal 500
);

CupertinoDynamicColor myBaseSecondaryVariantColor =
    const CupertinoDynamicColor.withBrightnessAndContrast(
  color: mySecondaryVariantColor, //teal400
  darkColor: Color(0xff00897b), //teal600
  highContrastColor: Color(0xff1de9b6), //teal A400
  darkHighContrastColor: Color(0xff00695c), //teal800
);

ColorScheme myColorSchemes = ColorScheme(
  primary: myBasePrimaryColor,
  primaryVariant: myBasePrimaryVariantColor,
  secondary: myBaseSecondaryColor,
  secondaryVariant: myBaseSecondaryVariantColor,
  surface: mySurfaceColor,
  background: myBackgroundColor,
  error: myErrorColor,
  onPrimary: myOnPrimaryColor,
  onSecondary: myOnSecondaryColor,
  onSurface: myOnSurfaceColor,
  onBackground: myOnBackgroundColor,
  onError: myOnErrorColor,
  brightness: Brightness.light,
);
