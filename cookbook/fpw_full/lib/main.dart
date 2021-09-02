// Copyright 2021 fgrott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:fpw_full/app/shared/app_vars.dart';
import 'package:fpw_full/app/ui/myapp.dart';
import 'package:fpw_full/app/ui/screens/home/myhomepage.dart';



// This works as the main function in say main_dev.dart
// redirects to this mainDelegate() function and
// thus dart is able to pick this up via the cmd-line
// compile(run) -t main_dev.dart
void mainDelegate() => main();

void main() {
  runApp(MyApp(
    home: MyHomePage(
      message: myHomePageMessage,
      title: myAppTitle,
    ),
  ));
}
