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

class AdaptiveContainerExample extends StatelessWidget {
  const AdaptiveContainerExample({Key? key}) : super(key: key);

  static const routeName = '/adaptivecontainerexample';

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
        title: const Text('Container Example'),
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

        body: Column(
          children: [
            AdaptiveContainer(
              constraints: const AdaptiveConstraints.xsmall(),
              color: Colors.red,
              child: const Text('This is an extra small window'),
            ),
            AdaptiveContainer(
              constraints: const AdaptiveConstraints.small(),
              color: Colors.orange,
              child: const Text('This is a small window'),
            ),
            AdaptiveContainer(
              constraints: const AdaptiveConstraints.medium(),
              color: Colors.yellow,
              child: const Text('This is a medium window'),
            ),
            AdaptiveContainer(
              constraints: const AdaptiveConstraints.large(),
              color: Colors.green,
              child: const Text('This is a large window'),
            ),
            AdaptiveContainer(
              constraints: const AdaptiveConstraints.xlarge(),
              color: Colors.blue,
              child: const Text('This is an extra large window'),
            ),
            AdaptiveContainer(
              constraints: const AdaptiveConstraints(
                // ignore: avoid_redundant_argument_values
                xsmall: true,
                // ignore: avoid_redundant_argument_values
                small: true,
                medium: false,
                large: false,
                xlarge: false,
              ),
              color: Colors.indigo,
              child: const Text('This is a small or extra small window'),
            ),
            AdaptiveContainer(
              constraints: const AdaptiveConstraints(
                xsmall: false,
                small: false,
                // ignore: avoid_redundant_argument_values
                medium: true,
                // ignore: avoid_redundant_argument_values
                large: true,
                // ignore: avoid_redundant_argument_values
                xlarge: true,
              ),
              color: Colors.pink,
              child: const Text('This is a medium, large, or extra large window'),
            ),
          ],
        ),
  
    );
  }

}