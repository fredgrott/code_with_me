// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';
import 'package:reactive_two/src/app.dart';
import 'package:reactive_two/src/infrastructure/app_vars.dart';
import 'package:reactive_two/src/presentation/features/home/ui/sample_item_details_view.dart';
import 'package:reactive_two/src/presentation/features/home/ui/sample_item_list_view.dart';
import 'package:reactive_two/src/presentation/features/settings/ui/settings_view.dart';
import 'package:reactive_two/src/presentation/features/settings/viewmodels/settings_viewmodel.dart';

// Need to Mock settingsViewModel
class MockSettingsController extends Mock implements SettingsViewModel {}


// ignore: long-method
void main() {
  // set up for all tests in this test suite
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
  });

  // tear down for all tests in this test suite
  tearDownAll(() async {});

  group('Basic Golden Tests ', () {
    // generates the main.png visual test
    testWidgets('Golden test', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp(
        navigatorKey: navigatorKey,
      ));
      await expectLater(find.byType(MyApp), matchesGoldenFile('main.png'));
    });

    testGoldens('DeviceBuilder-SampleItemListView ', (tester) async {
      final builder = DeviceBuilder()
        ..overrideDevicesForAllScenarios(devices: [
          Device.phone,
          Device.iphone11,
          Device.tabletPortrait,
          Device.tabletLandscape,
          samsungEightAndroid,
          samsungNineAndroid,
          iphonetwelvepromaxIOS,
        ])
        ..addScenario(
          widget: SampleItemListView(navigatorKey: navigatorKey,),
          name: 'Sample Item List Page',
        );
      await tester.pumpDeviceBuilder(builder);
      await screenMatchesGolden(
          tester, "Sample Item List Page multiple screens",);
    });

    // device visual tests on Sample Item Details Page
    testGoldens('DeviceBuilder-SampleItemDetailsView ', (tester) async {
      final builder = DeviceBuilder()
        ..overrideDevicesForAllScenarios(devices: [
          Device.phone,
          Device.iphone11,
          Device.tabletPortrait,
          Device.tabletLandscape,
          samsungEightAndroid,
          samsungNineAndroid,
          iphonetwelvepromaxIOS,
        ])
        ..addScenario(
          widget: SampleItemDetailsView(navigatorKey: navigatorKey,),
          name: 'Sample Item Details Page',
        );
      await tester.pumpDeviceBuilder(builder);
      await screenMatchesGolden(
        tester,
        "Sample Item Details Page multiple screens",
      );
    });

    // do a full device goldens test of SettingsView page
    testGoldens('DeviceBuilder-SettingsView ', (tester) async {
      final builder = DeviceBuilder()
        ..overrideDevicesForAllScenarios(devices: [
          Device.phone,
          Device.iphone11,
          Device.tabletPortrait,
          Device.tabletLandscape,
          samsungEightAndroid,
          samsungNineAndroid,
          iphonetwelvepromaxIOS,
        ])
        ..addScenario(
          widget: SettingsView(navigatorKey: navigatorKey, viewModel: settingsViewModel,
            
          ),
          name: 'Settings Page',
        );
      await tester.pumpDeviceBuilder(builder);
      await screenMatchesGolden(tester, "Settings Page multiple screens");
    });




  });
}

// My Custom Device Defs, see
// https://github.com/eBay/flutter_glove_box/blob/master/packages/golden_toolkit/lib/src/device.dart

Device samsungNineAndroid = const Device(
  name: "S9-Android",
  size: Size(1440, 3040),
);

Device samsungEightAndroid = const Device(
  name: "S8-Android",
  size: Size(1440, 2960),
);

Device pixelxlAndroid = const Device(
  name: "PixelXL-Android",
  size: Size(1440, 2560),
);

Device pixelfouraAndroid = const Device(
  name: "Pixel4A-Android",
  size: Size(1080, 2340),
);

Device pixelfourxlAndroid = const Device(
  name: "Pixel4XL-Android",
  size: Size(1440, 3040),
);

Device pixelfourAndroid = const Device(
  name: "Pixel4-Android",
  size: Size(1080, 2280),
);

Device pixelthreeaxlAndroid = const Device(
  size: Size(1080, 2160),
  name: "Pixel3a-Android",
);

Device pixelthreeaAndroid = const Device(
  size: Size(1080, 2220),
  name: "Pixel3a-Android",
);

Device pixelthreeAndroid = const Device(
  name: "Pixel3-Android",
  size: Size(1440, 2960),
);

Device iphonetenxIOS = const Device(
  size: Size(1125, 2436),
  name: "iPhoneX-iOS",
);

Device iphonetwelvepromaxIOS = const Device(
  size: Size(1284, 2778),
  name: "iPhone12ProMax-IOS",
);
