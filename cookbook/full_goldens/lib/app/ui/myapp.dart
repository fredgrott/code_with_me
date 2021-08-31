// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:full_goldens/app/shared/my_material_theme_data.dart';
import 'package:full_goldens/app/ui/screens/home/myhomepage.dart';
import 'package:full_goldens/generated/l10n.dart';

/// MyApp Widget
/// @author Fredrick Allan Grott
class MyApp extends StatelessWidget {
  const MyApp({Key? key, this.home}) : super(key: key);

  final MyHomePage? home;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,

      onGenerateTitle: (context) =>
                    S.of(context).appTitle,
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      home: home,
    );
  }
}
