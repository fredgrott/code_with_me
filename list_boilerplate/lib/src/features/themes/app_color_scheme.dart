// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:list_boilerplate/src/features/themes/app_palette.dart';

// Note, that the color schemes have missing colors.
// We do not extension the ColorScheme because its in 
// transition with the other widgets getting ColorScheme
// support so as to prevent having it being directly coupled
// which would be bad.

ColorScheme appColorSchemeLight = ColorScheme(
  primary: lightPrimaryColor,
  primaryVariant: lightPrimaryVariantColor,
  secondary: lightSecondaryColor,
  secondaryVariant: lightSecondaryVariantColor,
  surface: lightSurfaceColor,
  background: lightBackgroundColor,
  error: lightErrorColor,
  onPrimary: lightOnPrimaryColor,
  onSecondary: lightOnSecondaryColor,
  onSurface: lightOnSurfaceColor,
  onBackground: lightOnBackgroundColor,
  onError: lightOnErrorColor,
  brightness: Brightness.light,
);

ColorScheme appColorSchemeLightHighContrast = ColorScheme(
  primary: lightHighContrastPrimaryColor,
  primaryVariant: lightHighContrastPrimaryVariantColor,
  secondary: lightHighContrastSecondaryColor,
  secondaryVariant: lightHighContrastSecondaryVariantColor,
  surface: lightHighContrastSurfaceColor,
  background: lightHighContrastBackgroundColor,
  error: lightHighContrastErrorColor,
  onPrimary: lightHighContrastOnPrimaryColor,
  onSecondary: lightHighContrastOnSecondaryColor,
  onSurface: lightHighContrastOnSurfaceColor,
  onBackground: lightHighContrastOnBackgroundColor,
  onError: lightHighContrastOnErrorColor,
  brightness: Brightness.light,
);

ColorScheme appColorSchemeDark = ColorScheme(
  primary: darkPrimaryColor,
  primaryVariant: darkPrimaryVariantColor,
  secondary: darkSecondaryColor,
  secondaryVariant: darkSecondaryVariantColor,
  surface: darkSurfaceColor,
  background: darkBackgroundColor,
  error: darkErrorColor,
  onPrimary: darkOnPrimaryColor,
  onSecondary: darkOnSecondaryColor,
  onSurface: darkOnSurfaceColor,
  onBackground: darkOnBackgroundColor,
  onError: darkOnErrorColor,
  brightness: Brightness.dark,
);

ColorScheme appColorSchemeDarkHighContrast = ColorScheme(
  primary: darkHighContrastPrimaryColor,
  primaryVariant: darkHighContrastPrimaryVariantColor,
  secondary: darkHighContrastSecondaryColor,
  secondaryVariant: darkHighContrastSecondaryVariantColor,
  surface: darkHighContrastSurfaceColor,
  background: darkHighContrastBackgroundColor,
  error: darkHighContrastErrorColor,
  onPrimary: darkHighContrastOnPrimaryColor,
  onSecondary: darkHighContrastOnSecondaryColor,
  onSurface: darkHighContrastOnSurfaceColor,
  onBackground: darkHighContrastOnBackgroundColor,
  onError: darkHighContrastOnErrorColor,
  brightness: Brightness.dark,
);
