// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.




import 'package:flutter_test/flutter_test.dart';
import 'package:given_when_then/given_when_then.dart';
import 'package:zones_catcher_resp/app/shared/app_vars.dart';
import 'package:zones_catcher_resp/app/ui/myapp.dart';
import 'package:zones_catcher_resp/app/ui/screens/home/myhomepage.dart';


Future<void> Function(WidgetTester) harnessHomePageMessage(
  WidgetTestHarnessCallback<_MyAppHomePageMessageWidgetTestHarness> callback,
) {
  return (tester) => givenWhenThenWidgetTest(
        _MyAppHomePageMessageWidgetTestHarness(tester),
        callback,
      );
}

class _MyAppHomePageMessageWidgetTestHarness extends WidgetTestHarness {
  _MyAppHomePageMessageWidgetTestHarness(WidgetTester tester) : super(tester);
}

extension MyAppHomePageMessageGiven on WidgetTestGiven<_MyAppHomePageMessageWidgetTestHarness> {
  Future<void> appHomePagePreCondition() async {
    await tester.pumpWidget(MyApp(home: MyHomePage(title: myAppTitle, message: myHomePageMessage,),));
  }
}

extension MyAppHomePageMessageWhen on WidgetTestWhen<_MyAppHomePageMessageWidgetTestHarness> {
  Future<void> userPerformsSomeActionHomePage() async {
    await tester.tap(find.text(myHomePageMessage));
  }
}

extension MyAppTitleThen on WidgetTestThen<_MyAppHomePageMessageWidgetTestHarness> {
  Future<void> makeHomePageMessageAssertion() async {
    await tester.pump();
    expect(find.text(myHomePageMessage), findsOneWidget);
    //expect(find.text(myHomePageMessage), findsOneWidget);
  }
}
