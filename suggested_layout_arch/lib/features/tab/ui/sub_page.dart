// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modifications of the Flutter Platform Widgets plugin example:
// https://github.com/stryder-dev/flutter_platform_widgets
// which is under MIT License with my modifications under
// BSD clause 3 license copyright 2021 by Fredrick Allan Grott


import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:suggested_layout_arch/widget_extends/extensions.dart';



class SubPage extends StatelessWidget {
  const SubPage(this.tab, this.level, this.platform, {Key? key}) : super(key: key);
  final String tab;
  final int level;
  final TargetPlatform platform;

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      iosContentPadding: true,
      appBar: PlatformAppBar(
        title: Text('$tab $level'),
      ),
      body: Column(
        children: [
          Text('Sub Page $tab with $level'),
          PlatformButton(
            child: const Text('Push to subpage'),
            onPressed: () => Navigator.push<dynamic>(
              context,
              platformPageRoute<dynamic>(
                context: context,
                // ignore: unnecessary_parenthesis
                builder: (context) => ((BuildContext context) {
                  return SubPage(tab, level + 1, platform);
                }).asPlatform(platform),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
