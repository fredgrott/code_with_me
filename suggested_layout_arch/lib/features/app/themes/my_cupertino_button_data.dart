// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:suggested_layout_arch/features/app/themes/my_app_common_theme_vars.dart';





CupertinoButtonData myCupertinoButtonData = CupertinoButtonData(
  widgetKey: const Key('button'),
  color: myButtonColor,
  padding: EdgeInsetsGeometry.infinity,
  disabledColor: myDisabledColor,
  borderRadius: BorderRadius.zero,
  minSize: 10,
  pressedOpacity: 20,
  alignment: AlignmentDirectional.bottomCenter,
);