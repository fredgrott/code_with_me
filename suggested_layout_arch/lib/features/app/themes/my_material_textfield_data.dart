// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:suggested_layout_arch/features/app/themes/my_app_textstyles.dart';
import 'package:suggested_layout_arch/features/app/themes/my_color_schemes.dart';



MaterialTextFieldData myMaterialTexFieldData = MaterialTextFieldData(
  widgetKey: const Key('textfield'),
  keyboardType: TextInputType.datetime,
  textInputAction: TextInputAction.done,
  textCapitalization: TextCapitalization.characters,
  textAlign: TextAlign.center,
  textDirection: TextDirection.ltr,
  autofocus: true,
  obscureText: true,
  autocorrect: true,
  maxLines: 20,
  maxLength: 20,
  enabled: true,
  cursorWidth: 10,
  cursorRadius: Radius.zero,
  cursorColor: myColorSchemes.primary,
  scrollPadding: EdgeInsets.zero,
  enableInteractiveSelection: true,
  style: myTextFieldTextStyle,
  strutStyle: myTextFieldStrutStyle,

);