// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:catcher/catcher.dart';
import 'package:suggested_layout_arch/common/app_vars.dart';
import 'package:suggested_layout_arch/common/constants.dart';



// ignore: avoid_redundant_argument_values
ReportMode reportMode = PageReportMode(showStackTrace: true);

final CatcherOptions debugOptions = CatcherOptions(
  reportMode,
  [
    ConsoleHandler(
      // ignore: avoid_redundant_argument_values
      enableApplicationParameters: true,
      // ignore: avoid_redundant_argument_values
      enableDeviceParameters: true,
      enableCustomParameters: true,
      // ignore: avoid_redundant_argument_values
      enableStackTrace: true,
    ),
    // Requires the SentryClient import, put this in pubspec sentry: ^5.1.0
    //SentryHandler(
      //SentryClient(SentryOptions(dsn: 'YOUR DSN HERE')),
      //printLogs: true,
    //),
  ],
  // ignore: avoid_redundant_argument_values
  screenshotsPath: catcherScreenShots,
);

final CatcherOptions releaseOptions = CatcherOptions(DialogReportMode(), [
  EmailManualHandler(
    [
      catcherEmailAddyOne,
      catcherEmailAddyTwo,
    ],
    // ignore: avoid_redundant_argument_values
    enableDeviceParameters: true,
    // ignore: avoid_redundant_argument_values
    enableStackTrace: true,
    // ignore: avoid_redundant_argument_values
    enableCustomParameters: true,
    // ignore: avoid_redundant_argument_values
    enableApplicationParameters: true,
    // ignore: avoid_redundant_argument_values
    sendHtml: true,
    emailTitle: myAppTitle,
    emailHeader: "Error Report",
    printLogs: true,
  ),
]);

