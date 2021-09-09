// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:suggested_layout_arch/features/app/themes/my_app_common_theme_vars.dart';
import 'package:suggested_layout_arch/features/app/themes/my_color_schemes.dart';



CupertinoNavigationBarData myCupertinoNavigationBarData = CupertinoNavigationBarData(
  brightness: Brightness.light,
  // when using background images in screens
  backgroundColor: myColorSchemes.background,
  automaticallyImplyLeading: true,
  previousPageTitle: previousPageTitle,
  automaticallyImplyMiddle: true,
  padding: EdgeInsetsDirectional.zero,
  border: Border.all(color: myColorSchemes.primary,),
  transitionBetweenRoutes: true,
  // ignore: avoid_redundant_argument_values
  noMaterialParent: false,
);