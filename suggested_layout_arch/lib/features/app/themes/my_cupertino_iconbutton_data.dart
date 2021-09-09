// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:suggested_layout_arch/features/app/themes/my_app_common_theme_vars.dart';


CupertinoIconButtonData myCupertinoIconButtonData = CupertinoIconButtonData(
  widgetKey: const Key('iconbutton'),
  padding: EdgeInsets.zero,
  color: myButtonColor,
  disabledColor: myDisabledColor,
  minSize: 22,
  pressedOpacity: 10,
  alignment: AlignmentDirectional.bottomCenter,
  borderRadius: BorderRadius.zero,
  
);