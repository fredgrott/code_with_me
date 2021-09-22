// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:given_when_then/given_when_then.dart';
import 'package:reactive_two/src/app.dart';
import 'package:reactive_two/src/infrastructure/app_vars.dart';

// Just a simple example of a test harness which when implemented makes the
// tests somewhat English semantic readable and understandable. It also
// shows how to mix in using Page Objects since we have more than once
// screen.
//
// General thinking is that this is not a component test harness but 
// allows testing the app component as part of screen(features) testing 
// as in multiple screens due to deep linking will have appbar 
// dynamically changing per screen. I.E. use fo this harness is in the 
// widgets test suite instead of a separate appbar_test component 
// test suite.


Future<void> Function(WidgetTester) harness(
    // ignore: prefer-trailing-comma
    WidgetTestHarnessCallback<_WidgetTestHarness> callback) {
  return (tester) =>
      givenWhenThenWidgetTest(_WidgetTestHarness(tester), callback);
}

class _WidgetTestHarness extends WidgetTestHarness {
  _WidgetTestHarness(WidgetTester tester) : super(tester);
}

extension AppBarListGiven on WidgetTestGiven<_WidgetTestHarness> {
  Future<void> myAppExists() async {
    await tester.pumpWidget(MyApp(
      navigatorKey: navigatorKey,
    ));
  }
}

extension AppBarListWhen on WidgetTestWhen<_WidgetTestHarness> {
  Future<void> appBarFound() async {
    await tester.pump();
    expect(find.byType(AppBar), findsOneWidget);
  }
}

extension AppBarListThen on WidgetTestThen<_WidgetTestHarness> {
  Future<void> appBarTitleIs() async {
    await tester.pump();
    expect(find.text('Sample Items'), findsOneWidget);
  }
}

extension AppBarSettingsGiven on WidgetTestGiven<_WidgetTestHarness> {
  Future<void> myAppExists() async {
    await tester.pumpWidget(MyApp(
      navigatorKey: navigatorKey,
    ));

  }
}

extension AppBarSettingsWhen on WidgetTestWhen<_WidgetTestHarness>{
  Future<void> appBarFound() async {
    await tester.pump();
    expect(find.byType(AppBar), findsOneWidget);
  }
}
