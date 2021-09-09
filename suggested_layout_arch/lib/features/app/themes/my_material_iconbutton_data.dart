// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:suggested_layout_arch/features/app/themes/my_app_common_theme_vars.dart';



MaterialIconButtonData myMaterialIconButtonData = MaterialIconButtonData(
  widgetKey: const Key('iconbutton'),
  padding: EdgeInsets.zero,
  color: myButtonColor,
  disabledColor: myDisabledColor,
  highlightColor: myHighlightColor,
  iconSize: 12,
  splashColor: mySplashColor,
  tooltip: '',
  focusColor: myFocusColor,
  hoverColor: myHoverColor,
  autofocus: true,
  enableFeedback: true,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  constraints: const BoxConstraints.expand(),
  splashRadius: 44,
  mouseCursor: MouseCursor.defer,
  alignment: AlignmentDirectional.bottomCenter,
);