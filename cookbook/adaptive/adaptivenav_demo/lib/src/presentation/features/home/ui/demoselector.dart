// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from the adaptive components plugin from Material.io team
// My modifications under BSD clause 2 license copyright 2021 Fredrick Allan Grott

import 'package:adaptivenav_demo/src/presentation/features/custom/ui/customscaffolddemo.dart';
import 'package:adaptivenav_demo/src/presentation/features/default/ui/defaultscaffolddemo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DemoSelector extends StatelessWidget {
  const DemoSelector({Key? key}) : super(key: key);

  static const routeName = '/';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Default Scaffold'),
              onPressed: () {
                Navigator.of(context).pushReplacement<dynamic, dynamic>(
                  MaterialPageRoute<dynamic>(
                    builder: (context) {
                      return const DefaultScaffoldDemo();
                    },
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Custom Scaffold'),
              onPressed: () {
                Navigator.of(context).pushReplacement<dynamic, dynamic>(
                  MaterialPageRoute<dynamic>(
                    builder: (context) {
                      return const CustomScaffoldDemo();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
