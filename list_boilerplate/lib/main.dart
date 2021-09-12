// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from the Skeleton App Template and my modifications
// under BSD clause 2 license copyright 2012 by Fredrick Allan Grott

import 'dart:async';

import 'package:catcher/catcher.dart';
import 'package:flutter/material.dart';
import 'package:list_boilerplate/src/common/app_logging.dart';
import 'package:list_boilerplate/src/common/app_vars.dart';
import 'package:list_boilerplate/src/common/build_modes.dart';
import 'package:list_boilerplate/src/common/catcher.dart';

import 'src/app.dart';
import 'src/features/settings/controller/settings_controller.dart';
import 'src/features/settings/services/settings_service.dart';

void mainDelegate() => main();

// ignore: prefer_void_to_null
Future<Null> main() async {
  // ensure that the Flutter SkyEngine has fully initialized
  WidgetsFlutterBinding.ensureInitialized();

  initLogger();

  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  final settingsController = SettingsController(SettingsService());

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await settingsController.loadSettings();


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

  // ignore: prefer_void_to_null
  runZonedGuarded<Future<Null>>(
    () async {
      // To allow Catcher reports to work
      final GlobalKey<NavigatorState> navigatorKey =
          GlobalKey<NavigatorState>();
      // Service and other initializations here
      // Catcher takes care of app-user feedback on app errors, error reports to devs and dev team via sentry,
      // crashanalytics, slack, etc.
      Catcher(
        rootWidget: MyApp(
          settingsController: settingsController,
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
        final messageToLog = "[${DateTime.now()}] $myAppTitle $line $zone";

        // Also print the message in the "Debug Console"
        // but it's ony an info message and contains no
        // privacy prohibited stuff
        parent.print(zone, messageToLog);
      },
    ),
  );


}


