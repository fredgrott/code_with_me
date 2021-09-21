// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reactive_one/src/infrastructure/app_vars.dart';
import 'package:reactive_one/src/infrastructure/route_names.dart';
import 'package:reactive_one/src/presentation/features/home/ui/sample_item_details_view.dart';
import 'package:reactive_one/src/presentation/features/home/ui/sample_item_list_view.dart';
import 'package:reactive_one/src/presentation/features/settings/ui/settings_view.dart';

class MyRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case settingsRoute:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SettingsView(
            viewModel: settingsViewModel,
            navigatorKey: navigatorKey,
          ),
        );
      case sampleItemRoute:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SampleItemDetailsView(
            navigatorKey: navigatorKey,
          ),
        );
      case homeRoute:
        return MaterialPageRoute<dynamic>(
            builder: (_) => SampleItemListView(
                  navigatorKey: navigatorKey,
                ),);
      default:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SampleItemListView(
            navigatorKey: navigatorKey,
          ),
        );
    }
  }
}
