// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//

import 'dart:async';

import 'package:catcher/catcher.dart';
import 'package:flutter/material.dart';
import 'package:reactive_two/src/app.dart';
import 'package:reactive_two/src/infrastructure/app_exceptions_helper/catcher.dart';
import 'package:reactive_two/src/infrastructure/app_vars.dart';
import 'package:reactive_two/src/infrastructure/build_modes.dart';
import 'package:reactive_two/src/infrastructure/functions_helpers/autotrycatchfunctions.dart';
import 'package:reactive_two/src/infrastructure/logging/initlogger.dart';


void mainDelegate() => main();

// future required here for the await
Future<void> main() async {
  // ensure that the Flutter SkyEngine has fully initialized before the
  // runZoneGuarded declaration
  WidgetsFlutterBinding.ensureInitialized();

  // set up app logging
  guardVoided<dynamic>(() => initLogger());

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  // await settingsViewModel.loadSettings();
  // to try and catch block inner Future block items
  asyncGuardDefaultValue(() => settingsViewModel.loadSettings());

  // to catch flutter sdk framework errors
  FlutterError.onError = (FlutterErrorDetails details) async {
    if (isInDebugMode) {
      // In development mode simply print to console.
      FlutterError.dumpErrorToConsole(details);
    } else {
      // In production mode report to the application zone to report to
      // app exceptions provider. We do not need this in Profile mode.
      // ignore: no-empty-block
      if (isInReleaseMode) {
        // FlutterError class has something not changed as far as null safety
        // so I just assume we do not have a stack trace but still want the
        // detail of the exception.
        // ignore: cast_nullable_to_non_nullable
        Zone.current.handleUncaughtError(
          // ignore: cast_nullable_to_non_nullable
          details.exception, details.stack as StackTrace,
        );
        //Zone.current.handleUncaughtError(details.exception,  details.stack);
      }
    }
  };

  runZonedGuarded<Future<void>>(
    () async {
      // To allow Catcher reports to work
      final GlobalKey<NavigatorState> navigatorKey =
          GlobalKey<NavigatorState>();
      // Service and other initializations here
      // Catcher takes care of app-user feedback on app errors, error reports to devs and dev team via sentry,
      // crashanalytics, slack, etc.
      Catcher(
        rootWidget: MyApp(
          navigatorKey: navigatorKey,
        ),
        debugConfig: debugOptions,
        releaseConfig: releaseOptions,
        navigatorKey: navigatorKey,
      );
    },
    // ignore: no-empty-block
    (Object error, StackTrace stack) {
      // myBackend.sendError(error, stack);
    },
    zoneSpecification: ZoneSpecification(
      // Intercept all print calls
      print: (self, parent, zone, line) async {
        // Include a timestamp and the name of the App
        final messageToLog = "[${DateTime.now()}] $appTitleDebug $line $zone";

        // Also print the message in the "Debug Console"
        // but it's ony an info message and contains no
        // privacy prohibited stuff
        parent.print(zone, messageToLog);
      },
    ),
  );
}
