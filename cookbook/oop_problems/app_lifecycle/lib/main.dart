// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:app_lifecycle/app_vars.dart';
import 'package:app_lifecycle/home_page.dart';
import 'package:app_lifecycle/lifecycle_manager.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LifeCycleManager(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: myAppTitle,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: myAppTitle),
      ),
    );
  }
}
