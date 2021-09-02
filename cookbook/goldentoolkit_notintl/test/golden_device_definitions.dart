// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/widgets.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

// using info from https://yesviz.com/
// safe areas you have to get from OEM sites

Device myIPhone11 = const Device(
  size: Size(414, 896),
  name: 'myIPhone11',
  devicePixelRatio: 2.0,
  safeArea: EdgeInsets.only(top: 44, bottom: 34),
);

Device myOnePlus = const Device(
  name: 'myOnePlus',
  size: Size(412, 919),
  devicePixelRatio: 3.5,
  // a guess
  safeArea: EdgeInsets.only(top: 44, bottom: 34),
);
