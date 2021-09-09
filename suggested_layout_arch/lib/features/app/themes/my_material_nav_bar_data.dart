// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:suggested_layout_arch/features/app/themes/my_color_schemes.dart';



MaterialNavBarData myMaterialNavBarData = MaterialNavBarData(
  backgroundColor: myColorSchemes.background,
  iconSize: 44,
  elevation: 12,
  fixedColor: myColorSchemes.primaryVariant,
  widgetKey: const Key('navbar'),
  currentIndex: 1,
  type: BottomNavigationBarType.fixed,
  bottomNavigationBarKey: const Key('bottomnavbar'),
  clipBehavior: Clip.hardEdge,
  selectedFontSize: 16,
  selectedItemColor: myColorSchemes.secondary,
  showSelectedLabels: true,
  unselectedFontSize: 14,
  mouseCursor: MouseCursor.defer,
  enableFeedback: true,
);