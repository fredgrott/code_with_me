// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:suggested_layout_arch/features/app/themes/my_app_common_theme_vars.dart';





MaterialSwitchData myMaterialSwitchData = MaterialSwitchData(
  widgetKey: const Key('switch'),
  activeColor: mySplashColor,
  dragStartBehavior: DragStartBehavior.down,
  activeTrackColor: myHighlightColor,
  inactiveThumbColor: Colors.grey,
  inactiveTrackColor: Colors.grey,
  materialTapTargetSize: MaterialTapTargetSize.padded,
  focusColor: myFocusColor,
  hoverColor: myHoverColor,
  autofocus: true,
  mouseCursor: MouseCursor.defer,
  splashRadius: 12,
  );