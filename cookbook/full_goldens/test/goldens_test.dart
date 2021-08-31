// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:full_goldens/app/shared/app_vars.dart';
import 'package:full_goldens/app/shared/my_material_theme_data.dart';
import 'package:full_goldens/app/ui/myapp.dart';
import 'package:full_goldens/app/ui/screens/home/myhomepage.dart';
import 'package:full_goldens/generated/l10n.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:golden_toolkit/src/testing_tools.dart';

import 'golden_app_wrappers.dart';
import 'golden_device_definitions.dart';

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

    // ignore: no-empty-block
    setUpAll(() async {});

    // ignore: no-empty-block
    setUp(() async {});

    // ignore: no-empty-block
    tearDownAll(() async {});

    // ignore: no-empty-block
    tearDown(() async {});
    testWidgets('Golden test', (WidgetTester tester) async {
      await tester.pumpWidgetBuilder(
        MyHomePage(title: myAppTitle, message: myHomePageMessage),
        wrapper: myMaterialAppWrapper(
          theme: lightTheme,
          // ignore: avoid_redundant_argument_values
          platform: TargetPlatform.android,
          localizations: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            S.delegate,
          ],
        ),
      );

      await expectLater(find.byType(MyApp), matchesGoldenFile('main.png'));
    });

    testGoldens('DeviceBuilder ', (tester) async {
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
          name: 'default page',
        );
      await tester.pumpDeviceBuilder(builder);
      await screenMatchesGolden(
        tester,
        "my_home_page_single_scenario_more_devices",
      );
    });
  });

  group('Multiple Scenarios', () {
    testGoldens(
      'Multiple Scenarios with onCreate, visually matching unit tests via use cases',
      (WidgetTester tester) async {
        // Devices to visually test by our Use Cases
        // ignore: unused_local_variable
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
            name: 'counter at zero',
          )
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

        await tester.pumpDeviceBuilder(builder);

        await screenMatchesGolden(
          tester,
          'my_home_page_multiple_scenarios',
        );
      },
    );
  });
}
