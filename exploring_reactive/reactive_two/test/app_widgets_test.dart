// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reactive_two/src/app.dart';
import 'package:reactive_two/src/infrastructure/app_vars.dart';

import 'page_object_models.dart';

// ignore: no-empty-block
void main() {
  // ignore: no-empty-block
  setUpAll(() async {});

  // ignore: no-empty-block
  tearDownAll(() async {});

  group('MyApp', () {
    testWidgets('My home widget has a title, using PageObject',
        (WidgetTester tester) async {
      await tester.pumpWidget(MyApp(
        navigatorKey: navigatorKey,
      ));
      final app = MyAppListViewPageObject();
      expect(app.screen.title, allOf(findsOneWidget, HasText('Sample Items')));
    },);

    testWidgets('My settings widget has a title, using PageObject',
        (WidgetTester tester) async {
      await tester.pumpWidget(MyApp(
        navigatorKey: navigatorKey,
      ));
      final app = MyAppSettingsViewPageObject();
      expect(app.screen.title, allOf(findsOneWidget, HasText('Settings')));
    },);

    testWidgets(
        'My Home Page List item can be clicked into another widget, using PageObject',
        (WidgetTester tester) async {
      await tester.pumpWidget(MyApp(
        navigatorKey: navigatorKey,
      ));
      final app = MyAppListViewPageObject();
      expect(app.screen.title, allOf(findsOneWidget, HasText('Sample Items')));

      await tester.tap(find.byType(ListTile));
      // Rebuild the widget after the state has changed.
      await tester.pump();
      final myDetail = MyAppListDetailViewPageObject();
      expect(
          myDetail.screen.title,
          allOf(findsOneWidget,
              find.byKey(const Key("SampleItemDetailsView.title")),),);
      expect(myDetail.screen.bodyItem, find.byKey(const Key("ListItemBody")));
    },);
  });
}
