// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:suggested_layout_arch/features/app/themes/my_material_theme_data.dart';
import 'package:suggested_layout_arch/features/app/themes/my_materialbased_cupertinotheme_data.dart';
import 'package:suggested_layout_arch/features/app/ui/platformpage.dart';





class MyApp extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  const MyApp({Key? key, required this.navigatorKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: lightTheme,
      child: PlatformProvider(
        settings: PlatformSettingsData(iosUsesMaterialWidgets: true),
        builder: (context) => PlatformApp(
          localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
            DefaultMaterialLocalizations.delegate,
            DefaultWidgetsLocalizations.delegate,
            DefaultCupertinoLocalizations.delegate,
          ],
          title: 'Flutter Platform Widgets',
          home: const PlatformPage(),
          material: (_, __) => MaterialAppData(
            theme: lightTheme,
          ),
          cupertino: (_, __) => CupertinoAppData(
            theme: myMaterialBasedCupertinoThemeData,
          ),
        ),
      ),
    );
  }
}

