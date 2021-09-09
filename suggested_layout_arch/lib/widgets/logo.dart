// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modifications of the Flutter Platform Widgets plugin example:
// https://github.com/stryder-dev/flutter_platform_widgets
// which is under MIT License with my modifications under
// BSD clause 3 license copyright 2021 by Fredrick Allan Grott

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlutterPlatformWidgetsLogo extends StatelessWidget {
  final double size;
  const FlutterPlatformWidgetsLogo({
    Key? key,
    this.size = 60,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      OutlinedButton(
        // ignore: no-empty-block
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'F',
            style: TextStyle(
              fontSize: size,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(32.0),
        child: Text(
          'P',
          style: TextStyle(
            fontSize: size,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      CupertinoButton.filled(
        padding: const EdgeInsets.all(8),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            'W',
            style: TextStyle(
              fontSize: size,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // ignore: no-empty-block
        onPressed: () {},
      ),
    ]);
  }
}
