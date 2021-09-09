// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:suggested_layout_arch/features/app/themes/my_app_textstyles.dart';





CupertinoDialogActionData myCupertinoDialogActionData = CupertinoDialogActionData(
  widgetKey: const Key('dialogaction'),
  isDefaultAction: true,
  isDestructiveAction: true,
  textStyle: myCupertinoDialogActionTextStyle,

);