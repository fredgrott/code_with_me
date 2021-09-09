// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:io';

import 'package:path_provider/path_provider.dart';



String catcherEmailAddyOne = "email1@email.com";

String catcherEmailAddyTwo = "email2@email.com";

late Directory externalDir;

String catcherScreenShots = myCatcherScreenShotPath() as String;

Future<String> myCatcherScreenShotPath() async {
  if (Platform.isAndroid || Platform.isIOS || Platform.isFuchsia) {
    // ignore: cast_nullable_to_non_nullable
    externalDir = await getExternalStorageDirectory() as Directory;
  }
  if (Platform.isMacOS || Platform.isLinux || Platform.isWindows) {
    externalDir = await getApplicationDocumentsDirectory();
  }

  // ignore: unused_local_variable
  String path = "";

  return path = externalDir.path.toString();
}

enum Environment { dev, staging, prod }

class Constants {
  late Map<String, dynamic> _config;

  void setEnvironment(Environment env) {
    switch (env) {
      case Environment.dev:
        _config = _Config.debugConstants;
        break;
      case Environment.staging:
        _config = _Config.qaConstants;
        break;
      case Environment.prod:
        _config = _Config.prodConstants;
        break;
    }
  }

  // getters will match the setting variables in the _Config class
  dynamic get whereAmI {
    return _config[_Config.whereAmI];
  }
}

// ignore: avoid_classes_with_only_static_members
class _Config {
  static Map<String, dynamic> debugConstants = <String, dynamic>{
    whereAmI: "local",
  };

  static Map<String, dynamic> prodConstants = <String, dynamic>{
    whereAmI: "prod",
  };

  static Map<String, dynamic> qaConstants = <String, dynamic>{
    whereAmI: "staging",
  };

  // our env variables
  static const whereAmI = "where_am_i";
}
