// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


// Configures both the widget tests and goldens via
// the eBay GoldenToolkit plugin.
// changed main to testExecutable per issue#72801 on fluter sdk // as docs not updated yet, see
// https://github.com/flutter/flutter/issues/72801
import 'dart:async';

import 'package:golden_toolkit/golden_toolkit.dart';

/// Test configuration mainly for golden_toolkit plugin. 
/// Also need to set up an image folder in project root and that setting in 
/// pubspec.yaml file.
/// 
/// See
/// https://pub.dev/packages/golden_toolkit
/// 
/// Also see flutter git for example at:
/// https://github.com/flutter/flutter/blob/master/packages/flutter/test/flutter_test_config.dart
/// 
/// @author Fredrick Allan Grott
Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  return GoldenToolkit.runWithConfiguration(
        () async {
      await loadAppFonts();
      await testMain();
    },
    config: GoldenToolkitConfiguration(

      enableRealShadows: true,
    ),
  );
}