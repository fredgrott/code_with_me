// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:suggested_layout_arch/features/app/themes/my_color_schemes.dart';



MaterialDialogFlatActionData myMaterialDialogFlatActionData = MaterialDialogFlatActionData(
  widgetKey: const Key('dialoflataction'),
  color: myColorSchemes.primary,
  colorBrightness: Brightness.light,
  disabledColor: Colors.grey,
  disabledTextColor: Colors.black12,
  highlightColor: myColorSchemes.primaryVariant,
  padding: EdgeInsetsGeometry.infinity,
  splashColor: myColorSchemes.secondary,
  textColor: myColorSchemes.onPrimary,
  textTheme: ButtonTextTheme.normal,
  clipBehavior: Clip.hardEdge,
  materialTapTargetSize: MaterialTapTargetSize.padded,
  focusColor: myColorSchemes.secondaryVariant,
  hoverColor: myColorSchemes.primaryVariant,
  autofocus: true,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  mouseCursor: MouseCursor.defer,
  height: 44,
  minWidth: 44,

);