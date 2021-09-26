// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from the adaptive components example authored by the Material.io team
// Modifications under BSD clause 2 license copyrighted by Fredrick Allan Grott 2012



import 'package:adaptivecom_demo/src/presentation/features/column_example/ui/adaptive_column_example.dart';
import 'package:adaptivecom_demo/src/presentation/features/container_example/ui/adaptive_container_example.dart';
import 'package:adaptivecom_demo/src/presentation/features/settings/ui/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DemoSelector extends StatelessWidget {
  const DemoSelector({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demos'),
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

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Adaptive Column'),
              onPressed: () {
                Navigator.of(context).pushReplacement<dynamic, dynamic>(
                  MaterialPageRoute<dynamic>(
                    builder: (context) {
                      return const AdaptiveColumnsExample();
                    },
                  ),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Adaptive Container'),
              onPressed: () {
                Navigator.of(context).pushReplacement<dynamic, dynamic>(
                  MaterialPageRoute<dynamic>(
                    builder: (context) {
                      return const AdaptiveContainerExample();
                    },
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

}