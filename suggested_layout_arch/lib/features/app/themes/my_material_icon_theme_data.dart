// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suggested_layout_arch/features/app/themes/my_color_schemes.dart';



IconThemeData myMaterialSelectedIconThemeData = IconThemeData(
  opacity: 0,
  size: 45,
  color: myColorSchemes.primary,
);

IconThemeData myMaterialUnselectedIconThemeData = IconThemeData(
  opacity: 0,
  size: 45,
  color:myColorSchemes.primaryVariant,
);

IconThemeData myMaterialIconThemeData = IconThemeData(
  opacity: 0,
  size: 45,
  color: myColorSchemes.primary,
);

IconThemeData myMaterialActionsIconThemeData = IconThemeData(
  opacity: 0,
  size: 45,
  color: myColorSchemes.primaryVariant,
);