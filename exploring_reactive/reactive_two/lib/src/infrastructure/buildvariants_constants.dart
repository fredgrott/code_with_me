// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

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
