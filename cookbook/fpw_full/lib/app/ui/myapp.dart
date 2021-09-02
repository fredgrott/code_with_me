// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fpw_full/app/shared/app_vars.dart';
import 'package:fpw_full/app/ui/screens/home/myhomepage.dart';
import 'package:fpw_full/app/ui/themes/my_material_theme_data.dart';

/// MyApp Widget
/// @author Fredrick Allan Grott
class MyApp extends StatelessWidget {
  const MyApp({Key? key, this.home}) : super(key: key);

  final MyHomePage? home;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: myAppTitle,
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      home: home,
    );
  }
}
