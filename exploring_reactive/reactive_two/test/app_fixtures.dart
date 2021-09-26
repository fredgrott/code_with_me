// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// called via
// setUp(AppFixture.setUp);
// tearDown(AppFixture.tearDown);

// ignore_for_file: avoid_classes_with_only_static_members

import 'package:reactive_two/src/infrastructure/app_vars.dart';
import 'package:reactive_two/src/infrastructure/functions_helpers/autotrycatchfunctions.dart';

class AppFixtures {
  // ignore: no-empty-block
  static Future<void> setUp() async {
    asyncGuardDefaultValue(() => settingsViewModel.loadSettings());
  }
}
