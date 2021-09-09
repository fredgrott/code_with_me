// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:suggested_layout_arch/features/app/themes/my_color_schemes.dart';





FloatingActionButtonThemeData myMaterialFloatingActionBarThemeData = FloatingActionButtonThemeData(
  enableFeedback: true,
  elevation: 10,
  splashColor: myColorSchemes.primaryVariant,
  focusColor: myColorSchemes.secondary,
  hoverColor: myColorSchemes.secondaryVariant,
  foregroundColor: myColorSchemes.surface,
  backgroundColor: myColorSchemes.background,
  disabledElevation: 8,
  focusElevation: 14,
  hoverElevation: 16,
  highlightElevation: 18,
);