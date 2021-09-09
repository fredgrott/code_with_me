// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:suggested_layout_arch/features/app/themes/my_app_textstyles.dart';
import 'package:suggested_layout_arch/features/app/themes/my_color_schemes.dart';



MaterialBannerThemeData myMaterialBannerThemeData =
    MaterialBannerThemeData(
  leadingPadding: EdgeInsetsGeometry.infinity,
  padding: EdgeInsetsGeometry.infinity,
  contentTextStyle: myBannerContentTextStyle,
  backgroundColor: myColorSchemes.background,
);


