// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:app_lifecycle/new_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Orientation: $orientation',
                ),
                const SizedBox(
                  height: 8.0,
                ),
                ElevatedButton(
                  child: const Text('Navigate to new route'),
                  onPressed: () {
                    Navigator.of(context).pushReplacement<dynamic, dynamic>(
                      MaterialPageRoute<dynamic>(
                        builder: (context) => const NewPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
