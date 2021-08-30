// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'myapp_counter_widget_test_support.dart';
import 'myapp_homepagemessage_widget_test_support.dart';

import 'myapp_title_widget_test_support.dart';

class MyCounter {
  int initCount = 0;

  int? incrementMe() => initCount++;
}

class MockMyCounter extends Mock implements MyCounter {}

// @Tags([]) can only be used for packages and its individual tags per test and groups
// for packages. For non packages we have to use  the group and test names.

// ignore: unused_element
//const _deskTopSize = Size(800, 1280); // physical pixels

// ignore: long-method
void main() {
  // Make good use of [setUpAll], [setUp], [tearDownAll], and [tearDown]
  // to avoid repetitive code. Dont Repeat Yourself.
  // Remember this runs once before ALL tests or groups
  // Mocks set ups go here instead of in the group so applied to all groups of
  // tests.

  late MyCounter myCounter;

  // ignore: no-empty-block
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    myCounter = MockMyCounter();
  });

  // Remember this runs before EACH test or group
  setUp(() async {
    // ignore: unused_local_variable
    final TestWidgetsFlutterBinding binding =
        TestWidgetsFlutterBinding.ensureInitialized()
            as TestWidgetsFlutterBinding;

    // You can reset it to something else within a test
    // only on unit tests as in acceptance testing it would
    // be actual device target screen size
    //binding.window.physicalSizeTestValue = _deskTopSize;
  });

  // Remember this runs once after ALL tests or groups
  // ignore: no-empty-block
  tearDownAll(() async {});

  // Remember this runs after EACH test or group
  // ignore: no-empty-block
  tearDown(() async {
    // Code that clears caches can go here
  });

  group('Test my False counter Mock', () {
    // ignore: no-empty-block
    setUpAll(() async {});

    // ignore: no-empty-block
    setUp(() async {});

    // ignore: no-empty-block
    tearDownAll(() async {});

    // ignore: no-empty-block
    tearDown(() async {});

    test('test the fake mock', () {
      // stub
      when(() => myCounter.initCount).thenReturn(0);
      // we can do this way as it starts with no interaction at zero
      expect(myCounter.initCount, 0);

      // stubbed and the response, in this case thenReturn(1) is returned
      // when myCounter.incrementMe() is called outside the when
      when(() => myCounter.incrementMe()).thenReturn(1);

      myCounter.incrementMe();

      expect(myCounter.incrementMe(), 1);

      verify(() => myCounter.incrementMe()).called(2);
    });
  });

  group(
    'Home Page tests',
    () {
      // ignore: no-empty-block
      setUpAll(() async {});

      // ignore: no-empty-block
      setUp(() async {});

      // ignore: no-empty-block
      tearDownAll(() async {});

      // ignore: no-empty-block
      tearDown(() async {});

      // an example of how to use eBay's give_when_then
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

      // this is the whole gist of the idea, you understand the behavior of this part of the
      // test suite by just reading the methods as they semantically indicate the
      // behavior being tested and what we are expecting.
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
    },
  );
}
