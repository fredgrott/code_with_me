// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:suggested_layout_arch/features/app/themes/my_app_common_theme_vars.dart';
import 'package:suggested_layout_arch/features/app/themes/my_color_schemes.dart';






ToggleButtonsThemeData myMaterialToggleButtonThemeData = ToggleButtonsThemeData(
  borderWidth: 12,
  // ignore: avoid_redundant_argument_values
  borderRadius: const BorderRadius.horizontal(left: Radius.zero, right: Radius.zero),
  disabledBorderColor: Colors.grey,
  color: myButtonColor,
  selectedColor: myColorSchemes.primaryVariant,
  fillColor: myColorSchemes.secondary,
  focusColor: myFocusColor,
  highlightColor: myHighlightColor,
  hoverColor: myHoverColor,
  splashColor: mySplashColor,
  borderColor: myColorSchemes.secondaryVariant,
  selectedBorderColor: myColorSchemes.primary,
  
  
  

);