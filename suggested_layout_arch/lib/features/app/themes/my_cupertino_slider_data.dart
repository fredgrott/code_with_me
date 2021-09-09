// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:suggested_layout_arch/features/app/themes/my_app_common_theme_vars.dart';





CupertinoSliderData myCupertinoSliderData = CupertinoSliderData(
  widgetKey: const Key('slider'),
  value: 10,
  activeColor: myActiveColor,
  divisions: 10,
  min: 10,
  max: 40,
  thumbColor: myThumbColor,

);