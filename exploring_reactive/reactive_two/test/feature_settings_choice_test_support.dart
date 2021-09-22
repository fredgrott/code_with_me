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

extension HomeScreenToMySettingsGiven on WidgetTestGiven<_WidgetTestHarness> {
  Future<void> myAppExists() async {
    await tester.pumpWidget(MyApp(
      navigatorKey: navigatorKey,
    ));
  }
}

extension HomeScreenToMySettingsWhen on WidgetTestWhen<_WidgetTestHarness> {
  Future<void> myUserTappedSettingsIcon() async {
    await tester.tap(find.byIcon(Icons.settings));
    await tester.pump();
  }
}

extension HomeScreenToSettingsThen on WidgetTestThen<_WidgetTestHarness> {
  Future<void> myUserIsAtSettingsScreen() async {
    final app = MyAppSettingsViewPageObject();
    expect(app.screen.title, allOf(findsOneWidget, HasText('Settings')));
  }
}

// Second  When Then checks that dark theme is chosen and theme changes

extension SettingsScreenWhen on WidgetTestWhen<_WidgetTestHarness> {
  Future<void> myUserChoosesDarkTheme() async {
    await tester.tap(find.byKey(const Key("DarkTheme")));
    await tester.pump();
  }
}

extension SettingsScreenThen on WidgetTestThen<_WidgetTestHarness> {
  Future<void> myUserGetsDarkTheme() async {
    expect(ThemeMode.dark, isDarkMode);
  }
}
