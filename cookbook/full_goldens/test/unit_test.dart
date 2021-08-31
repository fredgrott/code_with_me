// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MyCounter {
  int initCount = 0;

  int? incrementMe() => initCount++;
}

class MockMyCounter extends Mock implements MyCounter {}

void main() {
  late MyCounter myCounter;

  // ignore: no-empty-block
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    myCounter = MockMyCounter();
  });

  // ignore: no-empty-block
  setUp(() async {});

  // ignore: no-empty-block
  tearDownAll(() async {});

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
}
