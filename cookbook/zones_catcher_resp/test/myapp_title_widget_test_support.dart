// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.




import 'package:flutter_test/flutter_test.dart';
import 'package:given_when_then/given_when_then.dart';
import 'package:zones_catcher_resp/app/shared/app_vars.dart';
import 'package:zones_catcher_resp/app/ui/myapp.dart';
import 'package:zones_catcher_resp/app/ui/screens/home/myhomepage.dart';


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
    await tester.pumpWidget(MyApp(home: MyHomePage(title: myAppTitle, message: myHomePageMessage,),));
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
