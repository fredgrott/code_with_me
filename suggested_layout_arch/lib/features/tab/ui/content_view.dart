// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modifications of the Flutter Platform Widgets plugin example:
// https://github.com/stryder-dev/flutter_platform_widgets
// which is under MIT License with my modifications under
// BSD clause 3 license copyright 2021 by Fredrick Allan Grott

import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:suggested_layout_arch/widget_extends/extensions.dart';


import 'sub_page.dart';

class ContentView extends StatefulWidget {
  final int index;
  final TargetPlatform platform;

  const ContentView(this.index, this.platform, {Key? key}) : super(key: key);

  @override
  _ContentViewState createState() => _ContentViewState();
}

class _ContentViewState extends State<ContentView> {
  late int counter = 0;

  @override
  Widget build(BuildContext context) {
    log('ContentView::build');

    return Column(
      children: [
        PlatformButton(
          child: const Text('Back'),
          onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
        ),
        Text('Viewing Tab ${widget.index}'),
        PlatformButton(
          child: const Text('Push to subpage'),
          onPressed: () => Navigator.push<dynamic>(
            context,
            platformPageRoute<dynamic>(
              context: context,
              // ignore: unnecessary_parenthesis
              builder: (context) => ((BuildContext context) {
                if (widget.index == 0) {

                  return SubPage('Flag', 1, widget.platform);
                }

                return SubPage('Book', 1, widget.platform);
              }).asPlatform(widget.platform),
            ),
          ),
        ),
        PlatformButton(
          child: const Text('Increment'),
          onPressed: () => setState(() => counter++),
        ),
        Text('Counter: $counter'),
      ],
    );
  }
}
