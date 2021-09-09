// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modifications of the Flutter Platform Widgets plugin example:
// https://github.com/stryder-dev/flutter_platform_widgets
// which is under MIT License with my modifications under
// BSD clause 3 license copyright 2021 by Fredrick Allan Grott

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

extension WidgetExt on Widget {
  Widget maxWidth(double maxWidth) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: maxWidth,
      ),
      child: this,
    );
  }

  Widget get center => Center(child: this);
}

extension DisplayPlatformTarget on TargetPlatform {
  String get text => this == TargetPlatform.iOS ? 'Cupertino' : 'Material';
}

extension PlatformTargetExt on WidgetBuilder {
  Widget asMaterial() {
    return asPlatform(TargetPlatform.android);
  }

  Widget asCupertino() {
    return asPlatform(TargetPlatform.iOS);
  }

  Widget asPlatform(TargetPlatform platform) {
    return Builder(
      builder: (context) {
        final p = PlatformProvider.of(context)!;

        return PlatformProvider(
          settings: p.settings,
          initialPlatform: platform,
          builder: (context) => this(context),
        );
      },
    );
  }
}
