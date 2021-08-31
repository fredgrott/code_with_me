// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



import 'package:bootsttrap_fulltest/app/shared/app_vars.dart';
import 'package:bootsttrap_fulltest/app/ui/myapp.dart';
import 'package:bootsttrap_fulltest/app/ui/screens/home/myhomepage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:given_when_then/given_when_then.dart';



Future<void> Function(WidgetTester) harnessCounter(
  WidgetTestHarnessCallback<_MyAppCounterWidgetTestHarness> callback,
) {
  return (tester) => givenWhenThenWidgetTest(
        _MyAppCounterWidgetTestHarness(tester),
        callback,
      );
}

class _MyAppCounterWidgetTestHarness extends WidgetTestHarness {
  _MyAppCounterWidgetTestHarness(WidgetTester tester) : super(tester);
}

extension MyAppCounterGiven on WidgetTestGiven<_MyAppCounterWidgetTestHarness> {
  Future<void> preConditionCounter() async {
   
    await tester.pumpWidget(MyApp(home: MyHomePage(title: myAppTitle, message: myHomePageMessage,),));
  }
}

extension MyCounterWhen on WidgetTestWhen<_MyAppCounterWidgetTestHarness> {
  Future<void> userPerformsTapIncrement() async {
    await tester.tap(find.byTooltip('Increment'));
  }
}

extension MyAppCounterZeroThen
    on WidgetTestThen<_MyAppCounterWidgetTestHarness> {
  Future<void> makeCounterZeroAssertion() async {
    await tester.pump();
    expect(find.text('0'), findsOneWidget);
    //expect(find.text(myHomePageMessage), findsOneWidget);
  }
}

extension MyAppCounterOneThen on WidgetTestThen<_MyAppCounterWidgetTestHarness> {
  Future<void> makeCounterOneAssertion() async {
    await tester.pump();
    expect(find.text('1'), findsOneWidget);
    //expect(find.text(myHomePageMessage), findsOneWidget);
  }
}

