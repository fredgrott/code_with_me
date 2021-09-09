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
import 'package:suggested_layout_arch/features/tab/ui/basictabbedpage.dart';
import 'package:suggested_layout_arch/features/tab/ui/dynamictabbedpage.dart';
import 'package:suggested_layout_arch/features/tab/ui/originaltabbedpage.dart';
import 'package:suggested_layout_arch/features/tab/ui/slivertabbedpage.dart';
import 'package:suggested_layout_arch/widget_extends/extensions.dart';
import 'package:suggested_layout_arch/widgets/platform_widget_example.dart';




class TabImplementationPage extends StatelessWidget {
  const TabImplementationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: const Text('Platform Tab Scaffold'),
      ),
      body: ListView(
        children: [
          PlatformWidgetExample(
            title: 'Basic Tabbed Page',
            builder: (_, platform) => PlatformButton(
              child: Text(platform.text),
              onPressed: () => _openPage(
                context,
                (_) => BasicTabbedPage(platform: platform),
                platform,
              ),
            ),
          ),
          PlatformWidgetExample(
            title: 'Sliver Tabbed Page',
            builder: (_, platform) => PlatformButton(
              child: Text(platform.text),
              onPressed: () => _openPage(
                context,
                (_) => SliverTabbedPage(platform: platform),
                platform,
              ),
            ),
          ),
          PlatformWidgetExample(
            title: 'Original Tabbed Page',
            builder: (_, platform) => PlatformButton(
              child: Text(platform.text),
              onPressed: () => _openPage(
                context,
                (_) => OriginalTabbedPage(platform: platform),
                platform,
              ),
            ),
          ),
          PlatformWidgetExample(
            title: 'Dynamic Tabbed Page',
            builder: (_, platform) => PlatformButton(
              child: Text(platform.text),
              onPressed: () => _openPage(
                context,
                (_) => DynamicTabbedPage(platform: platform),
                platform,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

dynamic _openPage(
  BuildContext context,
  WidgetBuilder pageToDisplayBuilder,
  TargetPlatform platform,
) {
  Navigator.push<dynamic>(
    context,
    platformPageRoute<dynamic>(
      context: context,
      builder: (context) => pageToDisplayBuilder.asPlatform(platform),
    ),
  );
}
