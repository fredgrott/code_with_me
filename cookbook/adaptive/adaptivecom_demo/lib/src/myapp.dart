// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from the adaptive components example authored by the Material.io team
// Modifications under BSD clause 2 license copyrighted by Fredrick Allan Grott 2012

import 'package:adaptivecom_demo/src/infrastructure/app_vars.dart';
import 'package:adaptivecom_demo/src/localization_gen/l10n.dart';
import 'package:adaptivecom_demo/src/presentation/features/column_example/ui/adaptive_column_example.dart';
import 'package:adaptivecom_demo/src/presentation/features/container_example/ui/adaptive_container_example.dart';
import 'package:adaptivecom_demo/src/presentation/features/home/ui/demoseletector.dart';

import 'package:adaptivecom_demo/src/presentation/features/settings/ui/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: settingsController,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,

          // Providing a restorationScopeId allows the Navigator built by the
          // MaterialApp to restore the navigation stack when a user leaves and
          // returns to the app after it has been killed while running in the
          // background.
          restorationScopeId: 'app',

          // Provide the generated AppLocalizations to the MaterialApp. This
          // allows descendant Widgets to display the correct translations
          // depending on the user's locale.
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''), // English, no country code
          ],

          // Use AppLocalizations to configure the correct application title
          // depending on the user's locale.
          //
          // The appTitle is defined in .arb files found in the localization
          // directory.
          onGenerateTitle: (BuildContext context) => S.of(context).appTitle,

          // Define a light and dark color theme. Then, read the user's
          // preferred ThemeMode (light, dark, or system default) from the
          // SettingsController to display the correct theme.
          theme: ThemeData(),
          darkTheme: ThemeData.dark(),
          themeMode: settingsController.themeMode,

          // Define a function to handle named routes in order to support
          // Flutter web url navigation and deep linking.
          onGenerateRoute: (RouteSettings routeSettings) {
            return MaterialPageRoute<void>(
              settings: routeSettings,
              builder: (BuildContext context) {
                switch (routeSettings.name) {
                  case SettingsView.routeName:
                    return SettingsView(controller: settingsController);
                  case AdaptiveColumnsExample.routeName:
                    return const AdaptiveColumnsExample();
                  case AdaptiveContainerExample.routeName:
                    return const AdaptiveContainerExample();
                  default:
                    return const DemoSelector();
                }
              },
            );
          },
        );
      },
    );
  }
}
