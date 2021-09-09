// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

MaterialAppBarData myMaterialAppBarData = MaterialAppBarData(
  textTheme: myMaterialTitleTextTheme ,
  // to adjust to iOS which defaults to title centered when no icons are present
  centerTitle: true,
  brightness: Brightness.light,
  // when we want it transparent such as when using background images
  backgroundColor: Colors.transparent,
  elevation: 0,
  bottomOpacity: 90,
  systemOverlayStyle: SystemUiOverlayStyle.light,
  toolbarTextStyle: myMaterialToolbarTextStyle,
  toolbarHeight: 66,
  excludeHeaderSemantics: true,
  toolbarOpacity: 4,
  titleSpacing: 4,
  primary: true,
  leadingWidth: 4,
  
);

TextTheme myMaterialTitleTextTheme = const TextTheme(
  // ignore: prefer-trailing-comma
  headline6: TextStyle(
    color: Colors.black,
    // ignore: prefer-trailing-comma
    fontWeight: FontWeight.bold  
    )
);

TextStyle myMaterialToolbarTextStyle = const TextStyle();