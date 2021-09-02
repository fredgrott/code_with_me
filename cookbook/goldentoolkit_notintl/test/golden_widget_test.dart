// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:goldentoolkit_notintl/app/shared/app_vars.dart';

import 'package:goldentoolkit_notintl/app/ui/myapp.dart';
import 'package:goldentoolkit_notintl/app/ui/screens/home/myhomepage.dart';

import 'golden_device_definitions.dart';
import 'goldentoolkit_wrappers.dart';

// so we know what to match
String myTitle = myAppTitle;

// In the Flutter Platform Widgets cross platform approach we
// will never need to to use the materialWrapper stuff from
// GoldenToolkit. It works this way as the MyApp is usually
// the root app widget that includes the MaterialApp or CupertinoApp or
// in the FPW case the PlatformApp widgets.
//
// In the FPW cross platform approach its desireable to do the
// theme-ing and the root platform widgets first before fast prototyping
// app screens.
//
// BDD-wise, match up the goldens to the use cases in widget_test with the
// only difference is that there is a single multi device test in addition  to the
// BDD visually use case tests.

// GoldenToolKit notes: I think I need to wrap the root widgets up to inject in
//                      pumpWidgetBuilder before I use DeviceBuilder

/// I use eBays golden_toolkit
/// https://pub.dev/packages/golden_toolkit
///
/// This gets configured in the flutter-test_config file and only for widget tests.
/// As screens and complexities increase one will  mock or fake an app scenario
/// so one can test how screen should appear to than act as matcher to
/// test results.
///
///
/// @author Fredrick Allan Grott
// ignore: long-method
void main() {
  // ignore: no-empty-block
  setUp(() async {});

  setUpAll(() async {
    WidgetsFlutterBinding.ensureInitialized();
  });

  // Remember this runs once after ALL tests or groups
  // ignore: no-empty-block
  tearDownAll(() async {});

  // Remember this runs after EACH test or group
  // ignore: no-empty-block
  tearDown(() async {
    // Code that clears caches can go here
  });

  group('Basic Golden Tests ', () {
    // replaces the Google Goldens test with an eBay GoldenToolkit Goldens
    // test so that we wrap with proper themes and localizations.
    testGoldens("Matches golden MyHomePage", (WidgetTester tester) async {
      await tester.pumpWidgetBuilder(
          MyApp(
            home: MyHomePage(
              message: myHomePageMessage,
              title: myAppTitle,
            ),
          ),
          wrapper: myMaterialAppWrapper(),
          surfaceSize: const Size(414, 896),);
      await expectLater(find.byType(MyApp), matchesGoldenFile('main.png'));
    });

    testGoldens("Matches AppTitle and MyHomePage Message",
        (WidgetTester tester) async {
      final builder = DeviceBuilder()
        ..overrideDevicesForAllScenarios(devices: [
          Device.phone,
          myIPhone11,
          myOnePlus,
          Device.tabletPortrait,
          Device.tabletLandscape,
        ])
        ..addScenario(
            widget: MyHomePage(
              title: myAppTitle,
              message: myHomePageMessage,
            ),
            name: 'apptitle',
            onCreate: (scenarioWidgetKey) async {
              final finder = find.descendant(
                of: find.byKey(scenarioWidgetKey),
                matching: find.text(myAppTitle),
              );
              expect(finder, findsOneWidget);
              await tester.tap(finder);
            },)
        ..addScenario(
            widget: MyHomePage(
              title: myAppTitle,
              message: myHomePageMessage,
            ),
            name: 'homePageMessage',
            onCreate: (scenarioWidgetKey) async {
              final finder = find.descendant(
                of: find.byKey(scenarioWidgetKey),
                matching: find.text(myHomePageMessage),
              );
              expect(finder, findsOneWidget);
              await tester.tap(finder);
            },);

      await tester.pumpDeviceBuilder(builder, wrapper: myMaterialAppWrapper());
      await screenMatchesGolden(
        tester,
        'my_home_page_apptitle_homepage_message',
      );
    },);

    testGoldens(
        'Goldens Counter Smoke tests Visually', (WidgetTester tester) async {

          final builder = DeviceBuilder()
        ..overrideDevicesForAllScenarios(devices: [
          Device.phone,
          myIPhone11,
          myOnePlus,
          Device.tabletPortrait,
          Device.tabletLandscape,
        ])
        ..addScenario(
          widget: MyHomePage(
            title: myAppTitle,
            message: myHomePageMessage,
          ),
          name: 'counter at one',
          onCreate: (scenarioWidgetKey) async {
            final finder = find.descendant(
              of: find.byKey(scenarioWidgetKey),
              matching: find.byIcon(Icons.add),
            );
            expect(finder, findsOneWidget);
            await tester.tap(finder);
          },
        );
        await tester.pumpDeviceBuilder(builder, wrapper: myMaterialAppWrapper());

        await screenMatchesGolden(
        tester,
        'my_counter_increments_to_one',
      );



        },);
  });
}
