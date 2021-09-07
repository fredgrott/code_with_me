// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:shaped_navbars/my_color_schemes.dart';

AppBarTheme appBarTheme = AppBarTheme(
  //brightness: Brightness.light, depreciated
  color: myPrimaryColor,
  backgroundColor: myPrimaryVariantColor,
  foregroundColor: myPrimaryVariantColor,
  elevation: 0,
  //shadowColor: 
  //textTheme: myBaseTextTheme,  depreciated
  centerTitle: true, //  cross platform wise needed as Apple products have center title
  titleSpacing: 0,
  toolbarHeight: 56,
  toolbarTextStyle: myToolbarTextStyle,
  titleTextStyle: myTitleTextStyle,
  iconTheme: myIconTheme,
  actionsIconTheme: myActionIconTheme,
 
);

TextStyle myToolbarTextStyle = const TextStyle(
  color: myOnPrimaryColor,

);

TextStyle myTitleTextStyle = const TextStyle(
  color: myOnPrimaryColor,

);

IconThemeData myIconTheme = const IconThemeData(
  color: mySecondaryColor,
  opacity: 0,
);

IconThemeData myActionIconTheme = const IconThemeData(
  color: mySecondaryVariantColor,
  opacity: 20,
);
