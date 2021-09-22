// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:given_when_then/given_when_then.dart';
import 'package:reactive_two/src/app.dart';
import 'package:reactive_two/src/infrastructure/app_vars.dart';

import 'page_object_models.dart';

Future<void> Function(WidgetTester) harness(
    // ignore: prefer-trailing-comma
    WidgetTestHarnessCallback<_WidgetTestHarness> callback) {
  return (tester) =>
      givenWhenThenWidgetTest(_WidgetTestHarness(tester), callback);
}

class _WidgetTestHarness extends WidgetTestHarness {
  _WidgetTestHarness(WidgetTester tester) : super(tester);
}

extension HomeScreenToSettingsGiven on WidgetTestGiven<_WidgetTestHarness> {
  Future<void> myAppExists() async {
    await tester.pumpWidget(MyApp(
      navigatorKey: navigatorKey,
    ));
  }
}

extension HomeScreenToSettingsWhen on WidgetTestWhen<_WidgetTestHarness> {
  Future<void> myUserTappedSettingsIcon() async {
    await tester.tap(find.byIcon(Icons.settings));
    await tester.pump();
  }
}

extension HomeScreenToSettingsThen on WidgetTestThen<_WidgetTestHarness> {
  // ignore: no-empty-block
  Future<void> myUserSettingsScreenExists() async {
    final mySettings = MyAppSettingsViewPageObject();
    expect(mySettings.screen.title,
        allOf(findsOneWidget, find.byKey(const Key("SettingsView.title")),),);
  }
}
