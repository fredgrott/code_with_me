// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.




import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:full_goldens/app/shared/app_vars.dart';
import 'package:full_goldens/app/shared/my_material_theme_data.dart';
import 'package:full_goldens/app/ui/screens/home/myhomepage.dart';
import 'package:full_goldens/generated/l10n.dart' show S;
import 'package:given_when_then/given_when_then.dart';
import 'package:golden_toolkit/src/testing_tools.dart';

import 'golden_app_wrappers.dart';

Future<void> Function(WidgetTester) harnessAppTitle(
  WidgetTestHarnessCallback<_MyAppTitleWidgetTestHarness> callback,
) {
  return (tester) => givenWhenThenWidgetTest(
        _MyAppTitleWidgetTestHarness(tester),
        callback,
      );
}

class _MyAppTitleWidgetTestHarness extends WidgetTestHarness {
  _MyAppTitleWidgetTestHarness(WidgetTester tester) : super(tester);
}

extension MyAppTitleGiven on WidgetTestGiven<_MyAppTitleWidgetTestHarness> {
  Future<void> appTitlePreCondition() async {
    //await tester.pumpWidget(MyApp(home: MyHomePage(title: myAppTitle, message: myHomePageMessage,),));
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
  }
}

extension MyAppTitleWhen on WidgetTestWhen<_MyAppTitleWidgetTestHarness> {
  Future<void> userPerformsSomeAction() async {
    await tester.tap(find.text(myAppTitle));
  }
}

extension MyAppTitleThen on WidgetTestThen<_MyAppTitleWidgetTestHarness> {
  Future<void> makeAppTitleAssertion() async {
    await tester.pump();
    expect(find.text(myAppTitle), findsOneWidget);
    //expect(find.text(myHomePageMessage), findsOneWidget);
  }
}
