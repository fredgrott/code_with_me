// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore: no-empty-block
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:full_goldens/app/shared/app_vars.dart';
import 'package:full_goldens/app/shared/my_material_theme_data.dart';
import 'package:full_goldens/app/ui/screens/home/myhomepage.dart';
import 'package:full_goldens/generated/l10n.dart';
import 'package:golden_toolkit/src/testing_tools.dart';

import 'golden_app_wrappers.dart';
import 'myapp_counter_widget_test_support.dart';
import 'myapp_homepagemessage_widget_test_support.dart';
import 'myapp_title_widget_test_support.dart';

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

  group('BDD Use Cases ', () {

    // ignore: no-empty-block
    setUpAll(() async {});

    // ignore: no-empty-block
    setUp(() async {});

    // ignore: no-empty-block
    tearDownAll(() async {});

    // ignore: no-empty-block
    tearDown(() async {});

    testWidgets('Counter At Zero Upon Startup And increments by one', (WidgetTester tester) async {
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

      //await expectLater(find.byType(MyApp), matchesGoldenFile('main.png'));
    });

     testWidgets(
      'app has title in appbar',
      harnessAppTitle(
        (titleTestGiven, titleTestWhen, titleTestThen) async {
          await titleTestGiven.appTitlePreCondition();
          await titleTestWhen.userPerformsSomeAction();
          await titleTestThen.makeAppTitleAssertion();
        },
      ),
    );


    testWidgets(
      'app has homepage message',
      harnessHomePageMessage(
        (
          homePageMessageTestGiven,
          homePageMessageTestWhen,
          homePageMessageTestThen,
        ) async {
          await homePageMessageTestGiven.appHomePagePreCondition();
          await homePageMessageTestWhen.userPerformsSomeActionHomePage();
          await homePageMessageTestThen.makeHomePageMessageAssertion();
        },
      ),
    );

    testWidgets(
      'counter increments smoke test',
      harnessCounter(
        (givenCounter, whenCounter, thenCounter) async {
          await givenCounter.preConditionCounter();
          await thenCounter.makeCounterZeroAssertion();
          await whenCounter.userPerformsTapIncrement();
          await thenCounter.makeCounterOneAssertion();
        },
      ),
    );

  });
}
