// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:shaped_navbars/my_color_schemes.dart';

BottomNavigationBarThemeData bottomNavBarThemeData = BottomNavigationBarThemeData(
  elevation: 0,
  backgroundColor: mySecondaryColor,
  selectedItemColor: mySecondaryVariantColor,
  selectedLabelStyle: mySelectedLabelStyle,
  unselectedLabelStyle: myUnSelectedLabelStyle,
  showSelectedLabels: true,
  selectedIconTheme: mySelectedIconTheme,
  unselectedIconTheme: myUnSelectedIconTheme,
);

TextStyle mySelectedLabelStyle = const TextStyle(
  color: myPrimaryColor,
);

TextStyle myUnSelectedLabelStyle = const TextStyle(
  color: myPrimaryVariantColor,
);

IconThemeData mySelectedIconTheme = const IconThemeData(
  color: myPrimaryColor,
);

IconThemeData myUnSelectedIconTheme = const IconThemeData(
  color: myPrimaryVariantColor,
);

