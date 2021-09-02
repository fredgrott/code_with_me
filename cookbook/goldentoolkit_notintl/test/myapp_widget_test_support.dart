// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// This is required for widget testing using the eBay accessory libraries of
// Give When Then and Page Objects that compliment the Golden Toolkit
//
// see:
// https://github.com/eBay/flutter_glove_box/blob/master/packages/given_when_then/lib/src/widget_test_harness.dart
//
// Keep in mind that pumpWidget constructs mean pump the root widget of the and that
// the eBay doc example shows a fake as they are not testing against a real counter
// app and no they do not make that clear in their docs!
//
// Can we use this for Instrumented Tests? Probably
//
// Why do this? Because, then the simple Group and test descriptions then match up with class names
// so the separate test team and dev teams have full understanding of test suite behavior in knowing
// which behavior is being fully tested and covered.




import 'package:flutter_test/flutter_test.dart';
import 'package:given_when_then/given_when_then.dart';
import 'package:goldentoolkit_notintl/app/shared/app_vars.dart';
import 'package:goldentoolkit_notintl/app/ui/myapp.dart';
import 'package:goldentoolkit_notintl/app/ui/screens/home/myhomepage.dart';

Future<void> Function(WidgetTester) harness(
  WidgetTestHarnessCallback<_MyAppSupportWidgetTestHarness> callback,
) {
  return (tester) => givenWhenThenWidgetTest(
        _MyAppSupportWidgetTestHarness(tester),
        callback,
      );
}

// This is where the Support Dependencies and Mocking would have to be inserted as then
// are using the support 'harness' to wire everything up for our tests
class _MyAppSupportWidgetTestHarness extends WidgetTestHarness {
  _MyAppSupportWidgetTestHarness(WidgetTester tester) : super(tester);
}

extension MyAppGiven on WidgetTestGiven<_MyAppSupportWidgetTestHarness> {
  Future<void> preCondition() async {
    await tester.pumpWidget(MyApp(home: MyHomePage(title: myAppTitle, message: myHomePageMessage,),));
  }
}

// Now we outline all our behaviors to test via the When Then parts of the Give
// When Then testing library. In short words our core definition of what we
// are testing moved from named_test.dart to here!

// Name the extensions to indicate behavior

//First Pair: Tests if App has Title And HomePage message
extension AppTitleThen on WidgetTestWhen<_MyAppSupportWidgetTestHarness> {
  Future<void> makeSomeAssertion() async {
    await tester.pump();
    expect(find.text(myAppTitle), findsOneWidget);
    //expect(find.text(myHomePageMessage), findsOneWidget);
  }

  
}

// Second Pair: Tests Counter At Zero then Increments To One
extension CounterZeroWhen on WidgetTestWhen<_MyAppSupportWidgetTestHarness> {
  Future<void> userPerformsSomeAction() async {
    await tester.tap(find.text('0'));
  }
}

extension CounterIncrementsThen
    on WidgetTestThen<_MyAppSupportWidgetTestHarness> {
  Future<void> makeSomeAssertion() async {
    await tester.pump();
    await tester.tap(find.byTooltip('Increment'));
    await tester.pumpAndSettle();
    expect(find.text('1'), findsOneWidget);
  }
}
