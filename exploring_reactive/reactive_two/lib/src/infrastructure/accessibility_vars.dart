// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

Brightness appBrightness = SchedulerBinding.instance!.window.platformBrightness;
bool isDarkMode = appBrightness == Brightness.dark;
