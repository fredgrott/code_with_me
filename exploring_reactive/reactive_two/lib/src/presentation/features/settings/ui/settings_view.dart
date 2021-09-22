// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:reactive_two/src/localization_gen/l10n.dart';
import 'package:reactive_two/src/presentation/features/settings/viewmodels/settings_viewmodel.dart';


/// Displays the various settings that can be customized by the user.
///
/// When a user changes a setting, the SettingsController is updated and
/// Widgets that listen to the SettingsController are rebuilt.
class SettingsView extends StatelessWidget {

  final GlobalKey<NavigatorState> navigatorKey;


  const SettingsView({Key? key, required this.viewModel, required this.navigatorKey}) : super(key: key);

  static const routeName = '/settings';

  final SettingsViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).appSettingsTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        // Glue the SettingsController to the theme selection DropdownButton.
        //
        // When a user selects a theme from the dropdown list, the
        // SettingsController is updated, which rebuilds the MaterialApp.
        child: DropdownButton<ThemeMode>(
          // Read the selected themeMode from the controller
          value: viewModel.themeMode,
          // Call the updateThemeMode method any time the user selects a theme.
          onChanged: viewModel.updateThemeMode,
          items:  [
            DropdownMenuItem(
              value: ThemeMode.system,
              child: Text(
                S.of(context).settingsSystemTheme, key: const Key("SystemTheme"),),
            ),
            DropdownMenuItem(
              value: ThemeMode.light,
              child: Text(
                S.of(context).settingsLightTheme, key: const Key("LightTheme"),),
            ),
            DropdownMenuItem(
              value: ThemeMode.dark,
              child: Text(S.of(context).settingsDarkTheme, key: const Key("DarkTheme"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
