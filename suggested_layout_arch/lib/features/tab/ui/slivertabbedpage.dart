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
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:suggested_layout_arch/features/tab/ui/content_view.dart';
import 'package:suggested_layout_arch/features/tab/ui/sliver_view.dart';



class SliverTabbedPage extends StatefulWidget {
  final TargetPlatform platform;

  const SliverTabbedPage({Key? key, required this.platform}) : super(key: key);

  @override
  _SliverTabbedPageState createState() => _SliverTabbedPageState();
}

class _SliverTabbedPageState extends State<SliverTabbedPage> {
  static final titles = ['Flag', 'Book'];
  // ignore: prefer_function_declarations_over_variables
  final items = (BuildContext context) => [
        BottomNavigationBarItem(
          label: titles[0],
          icon: Icon(context.platformIcons.flag),
        ),
        BottomNavigationBarItem(
          label: titles[1],
          icon: Icon(context.platformIcons.book),
        ),
      ];

  late Widget Function(BuildContext, int) contentBuilder;

  // This needs to be captured here in a stateful widget
  late PlatformTabController tabController;

  @override
  void initState() {
    super.initState();

    // If you want further control of the tabs have one of these
    tabController = PlatformTabController(
      initialIndex: 1,
    );

    contentBuilder = (BuildContext context, int index) => SliverView(
          title: titles[index],
          children: [ContentView(index, widget.platform)],
        );
  }

  @override
  Widget build(BuildContext context) {
    return PlatformTabScaffold(
      iosContentPadding: true,
      tabController: tabController,
      bodyBuilder: contentBuilder,
      items: items(context),
    );
  }
}
