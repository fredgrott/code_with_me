// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:suggested_layout_arch/features/app/themes/my_material_icon_theme_data.dart';



AppBarTheme myMaterialAppBarTheme = AppBarTheme(
  
  systemOverlayStyle: SystemUiOverlayStyle.light,
  shadowColor: Colors.black12,
  // one can either go with the Material default or CupertinoApp default with is center
  centerTitle: true,
  iconTheme: myMaterialIconThemeData,
  actionsIconTheme: myMaterialActionsIconThemeData,
);
