// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:list_boilerplate/src/features/themes/fredgrott_theme_tricks.dart';
import 'package:list_boilerplate/src/features/themes/my_app_theme_data.dart';



ThemeData myCupertinoMThemeData() {
  return isDarkMode ? MyAppThemeData.darkThemeData : MyAppThemeData.lightThemeData;
}

MaterialBasedCupertinoThemeData myMaterialBasedCupertinoThemeData =
    MaterialBasedCupertinoThemeData(
  materialTheme: myCupertinoMThemeData(),
);
