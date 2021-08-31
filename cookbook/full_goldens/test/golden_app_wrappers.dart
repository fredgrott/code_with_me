// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

/// myMaterialAppWrapper an example of how to wrap the App Widget, if using FPW 
/// as the way to cross platform then you would customize wrapper to return 
/// the Platform Provider tree all way down to the PlatformApp.
/// 
/// An example:
/// await tester.pumpWidgetBuilder(
///        yourWidget,
///        wrapper: materialAppWrapper(
///          theme: ThemeData.light(),
///          platform: TargetPlatform.android,
///        ),
///      );
/// 
/// @author Fredrick Allan Grott
// ignore: long-parameter-list
WidgetWrapper? myMaterialAppWrapper ({
  TargetPlatform platform = TargetPlatform.android,
  Iterable<LocalizationsDelegate<dynamic>>? localizations,
  NavigatorObserver? navigatorObserver,
  Iterable<Locale>? localeOverrides,
  ThemeData? theme,
}) {
  return (child) => MaterialApp(
        localizationsDelegates: localizations,
        supportedLocales: localeOverrides ?? const [Locale('en')],
        theme: theme?.copyWith(platform: platform),
        debugShowCheckedModeBanner: false,
        home: Material(child: child),
        navigatorObservers: [
          if (navigatorObserver != null) navigatorObserver,
        ],
      );

}