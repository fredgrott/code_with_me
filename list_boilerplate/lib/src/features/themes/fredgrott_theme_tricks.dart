// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ui';

import 'package:flutter/scheduler.dart';

// Purpose is to detect dark mode as since the settings of
// whether isDark or not is rebuilt via change notifier at
// root of widget tree we can do some fancy fixing of the
// crap mess of widgets not yet colorscheme converted.
Brightness brightness = SchedulerBinding.instance!.window.platformBrightness;
bool isDarkMode = brightness == Brightness.dark;

Color? dropDownEnabledIconColor() {
  return null;
}

Color? dropDownDisabledIconColor() {
  return null;
}

Color? dropDownFocusColor() {
  return null;
}

Color? dropDownColor() {
  return null;
}

Color? listTileFocusColor() {
  return null;
}

Color? listTileHoverColor() {
  return null;
}

Color? listTileTileColor() {
  return null;
}

Color? listTileSelectedTileColor() {
  return null;
}
