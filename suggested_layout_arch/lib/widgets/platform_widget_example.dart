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
import 'package:suggested_layout_arch/widget_extends/extensions.dart';



class PlatformWidgetExample extends StatelessWidget {
  final Widget Function(BuildContext context, TargetPlatform platform) builder;
  final String title;
  final bool showBothPlatforms;

  const PlatformWidgetExample({
    Key? key,
    required this.builder,
    required this.title,
    this.showBothPlatforms = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Text(title),
        ),
        if (showBothPlatforms) _doublePlatformWidgets(),
        if (!showBothPlatforms)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: builder(
              context,
              isMaterial(context) ? TargetPlatform.android : TargetPlatform.iOS,
            ),
          ),
        const Divider(
          height: 16,
          thickness: 2,
        ),
      ],
    );
  }

  Widget _doublePlatformWidgets() {
    return IntrinsicHeight(
      child: Row(
        children: [
          // ignore: unnecessary_parenthesis
          ((BuildContext context) => Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: builder(context, TargetPlatform.android),
                ),
              )).asMaterial(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: VerticalDivider(
              width: 1,
              thickness: 1,
            ),
          ),
          // ignore: unnecessary_parenthesis
          ((BuildContext context) => Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: builder(context, TargetPlatform.iOS),
                ),
              )).asCupertino(),
        ],
      ).maxWidth(500),
    );
  }
}
