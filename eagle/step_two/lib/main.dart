
import 'package:bootsttrap_fulltest/app/shared/app_vars.dart';

import 'package:bootsttrap_fulltest/app/ui/myapp.dart';
import 'package:bootsttrap_fulltest/app/ui/screens/home/myhomepage.dart';

import 'package:flutter/material.dart';

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




