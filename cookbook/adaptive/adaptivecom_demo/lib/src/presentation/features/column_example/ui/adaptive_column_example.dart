// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from the adaptive components example authored by the Material.io team
// Modifications under BSD clause 2 license copyrighted by Fredrick Allan Grott 2012

import 'package:adaptive_components/adaptive_components.dart';
import 'package:adaptivecom_demo/src/presentation/features/home/ui/demoseletector.dart';
import 'package:adaptivecom_demo/src/presentation/features/settings/ui/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AdaptiveColumnsExample extends StatelessWidget {
  const AdaptiveColumnsExample({Key? key}) : super(key: key);

  static const routeName = '/adaptivecolumnsexample';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate to the settings page. If the user leaves and returns
            // to the app after it has been killed while running in the
            // background, the navigation stack is restored.
            Navigator.restorablePushNamed(context, DemoSelector.routeName);
          },
        ),
        title: const Text('Column Example'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Navigate to the settings page. If the user leaves and returns
              // to the app after it has been killed while running in the
              // background, the navigation stack is restored.
              Navigator.restorablePushNamed(context, SettingsView.routeName);
            },
          ),
        ],
      ),

      body: AdaptiveColumn(
        children: [
          AdaptiveContainer(
            constraints: const AdaptiveConstraints.xsmall(),
            columnSpan: 2,
            color: Colors.red,
            child: const Text('This is an extra small window'),
          ),
          AdaptiveContainer(
            constraints: const AdaptiveConstraints.small(),
            columnSpan: 2,
            color: Colors.orange,
            child: const Text('This is a small window'),
          ),
          AdaptiveContainer(
            constraints: const AdaptiveConstraints.medium(),
            columnSpan: 2,
            color: Colors.yellow,
            child: const Text('This is a medium window'),
          ),
          AdaptiveContainer(
            constraints: const AdaptiveConstraints.large(),
            columnSpan: 2,
            color: Colors.green,
            child: const Text('This is a large window'),
          ),
          AdaptiveContainer(
            constraints: const AdaptiveConstraints.xlarge(),
            columnSpan: 2,
            color: Colors.blue,
            child: const Text('This is an extra large window'),
          ),
          AdaptiveContainer(
            constraints: const AdaptiveConstraints.xsmall(
              // ignore: avoid_redundant_argument_values
              xsmall: true,
              small: true,
            ),
            columnSpan: 2,
            color: Colors.indigo,
            child: const Text('This is a small or extra small window'),
          ),
          AdaptiveContainer(
            constraints: const AdaptiveConstraints.medium(
              // ignore: avoid_redundant_argument_values
              medium: true,
              large: true,
              xlarge: true,
            ),
            columnSpan: 2,
            color: Colors.pink,
            child: const Text('This is a medium, large, or extra large window'),
          ),
          AdaptiveContainer(
            columnSpan: 12,
            color: Colors.black,
            child: const Text('This is for every screen size'),
          ),
          AdaptiveContainer(
            columnSpan: 6,
            color: Colors.black,
            child: const Text('This is for every screen size'),
          ),
          AdaptiveContainer(
            columnSpan: 6,
            color: Colors.black,
            child: const Text('This is for every screen size'),
          ),
          AdaptiveContainer(
            columnSpan: 4,
            color: Colors.black,
            child: const Text('This is for every screen size'),
          ),
          AdaptiveContainer(
            columnSpan: 4,
            color: Colors.black,
            child: const Text('This is for every screen size'),
          ),
          AdaptiveContainer(
            columnSpan: 4,
            color: Colors.black,
            child: const Text('This is for every screen size'),
          ),
          AdaptiveContainer(
            columnSpan: 2,
            color: Colors.black,
            child: const Text('This is for every screen size'),
          ),
          AdaptiveContainer(
            columnSpan: 2,
            color: Colors.black,
            child: const Text('This is for every screen size'),
          ),
          AdaptiveContainer(
            columnSpan: 2,
            color: Colors.black,
            child: const Text('This is for every screen size'),
          ),
          AdaptiveContainer(
            columnSpan: 2,
            color: Colors.black,
            child: const Text('This is for every screen size'),
          ),
          AdaptiveContainer(
            columnSpan: 2,
            color: Colors.black,
            child: const Text('This is for every screen size'),
          ),
          AdaptiveContainer(
            columnSpan: 2,
            color: Colors.black,
            child: const Text('This is for every screen size'),
          ),
        ],
      ),
    );
  }
}
