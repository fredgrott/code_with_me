// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from Material.io's adaptive components example
// Modifications under BSD clause 2 License copyright 2021 by Fredrick Allan Grott

import 'package:adaptive_components/adaptive_components.dart';
import 'package:adaptivebreak_demo/src/presentation/features/settings/ui/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  static const routeName = '/';
  


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Breakpoint Demo"),
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
            // ignore: avoid_redundant_argument_values
            constraints: const AdaptiveConstraints(xsmall: true),
            color: Colors.redAccent,
            child: const Text("This is an extra small window"),

          ),
          AdaptiveContainer(
            // ignore: avoid_redundant_argument_values
            constraints: const AdaptiveConstraints(small: true),
            color: Colors.orangeAccent,
            child: const Text('This is a small window'),
          ),
          AdaptiveContainer(
            // ignore: avoid_redundant_argument_values
            constraints: const AdaptiveConstraints(medium: true),
            color: Colors.yellowAccent,
            child: const Text('This is a medium window'),

          ),
          AdaptiveContainer(
            // ignore: avoid_redundant_argument_values
            constraints: const AdaptiveConstraints(large: true),
            color: Colors.greenAccent,
            child: const Text('This is a large window'),
          ),
          AdaptiveContainer(
            // ignore: avoid_redundant_argument_values
            constraints: const AdaptiveConstraints(xlarge: true),
            color: Colors.blueAccent,
            child: const Text('This is an extra large window'),
          ),
          AdaptiveContainer(
            // ignore: avoid_redundant_argument_values
            constraints: const AdaptiveConstraints(small: true, xsmall: true ),
            color: Colors.indigoAccent,
            child: const Text('This is a small or extra small window'),

          ),
          AdaptiveContainer(
            // ignore: avoid_redundant_argument_values
            constraints: const AdaptiveConstraints(medium: true, large: true, xlarge: true),
            color: Colors.pinkAccent,
            child: const Text('This is a medium, large, or extra large window'),

          ),
        ],
      ),
    );
  }
}
