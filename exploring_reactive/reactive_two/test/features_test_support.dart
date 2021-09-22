// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter_test/flutter_test.dart';
import 'package:given_when_then/given_when_then.dart';
import 'package:reactive_two/src/app.dart';
import 'package:reactive_two/src/infrastructure/app_vars.dart';

// Use Case: We want to pump the rootWidget(MyApp) but then
// get the screen(feature) we want to do some testing of
// features on that screen.

Future<void> Function(WidgetTester) harness(
    // ignore: prefer-trailing-comma
    WidgetTestHarnessCallback<_WidgetTestHarness> callback) {
  return (tester) =>
      givenWhenThenWidgetTest(_WidgetTestHarness(tester), callback);
}

class _WidgetTestHarness extends WidgetTestHarness {
  _WidgetTestHarness(WidgetTester tester) : super(tester);
}

// app starts with list view as home route
extension HomeScreenGiven on WidgetTestGiven<_WidgetTestHarness> {
  Future<void> myAppExists() async {
    await tester.pumpWidget(MyApp(
      navigatorKey: navigatorKey,
    ));
  }
}
