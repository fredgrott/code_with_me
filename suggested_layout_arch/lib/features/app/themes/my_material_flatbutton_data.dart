// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:suggested_layout_arch/features/app/themes/my_app_common_theme_vars.dart';




MaterialFlatButtonData myMaterialFlatButtonData = MaterialFlatButtonData(
  widgetKey: const Key('flatbutton'),
  color: myButtonColor,
  padding: EdgeInsetsGeometry.infinity,
  disabledColor: myDisabledColor,
  disabledElevation: 4,
  disabledTextColor: myDisabledTextColor,
  elevation: 10,
  highlightColor: myHighlightColor,
  highlightElevation: 14,
  splashColor: mySplashColor,
  textColor: myButtonTextColor,
  clipBehavior: Clip.hardEdge,
  materialTapTargetSize: MaterialTapTargetSize.padded,
  focusElevation: 16,
  focusColor: myFocusColor,
  hoverColor: myHoverColor,
  animationDuration: const Duration(seconds: 4),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  autofocus: true,
  minWidth: 12,
  height: 12,
  mouseCursor: MouseCursor.defer,
);