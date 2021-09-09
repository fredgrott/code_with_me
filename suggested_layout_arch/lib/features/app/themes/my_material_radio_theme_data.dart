// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:suggested_layout_arch/features/app/themes/my_app_common_theme_vars.dart';



RadioThemeData myMaterialRadioThemeData = RadioThemeData(
 visualDensity: VisualDensity.adaptivePlatformDensity,
 materialTapTargetSize: MaterialTapTargetSize.padded,
 splashRadius: 14,
 mouseCursor: MaterialStateProperty.all(MouseCursor.defer),
 fillColor: MaterialStateProperty.all(myFilledColor),
 overlayColor: MaterialStateProperty.all(myOverlayColor),
 
);