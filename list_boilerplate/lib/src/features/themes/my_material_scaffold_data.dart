// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

MaterialScaffoldData myMaterialScaffoldData = MaterialScaffoldData(
  // need this when doing background images on screens
  extendBodyBehindAppBar: true,
  extendBody: true,
  // flutterEngine draws above so we need to resize stuff so 
  // that the systemUI-navbar gets draw on top of the flutter
  // engine and our Flutter app and its only needed on 
  // android
  // ignore: prefer-trailing-comma
  resizeToAvoidBottomInset: false,
  restorationId: '',

);