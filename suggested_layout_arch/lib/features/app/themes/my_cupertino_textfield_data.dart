// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:suggested_layout_arch/features/app/themes/my_app_common_theme_vars.dart';
import 'package:suggested_layout_arch/features/app/themes/my_app_textstyles.dart';




CupertinoTextField myCupertinoTextFieldData = CupertinoTextField(
  key: const Key('textfield'),
  padding: EdgeInsetsGeometry.infinity,
  placeholder: textFieldPlaceholder,
  // ignore: avoid_redundant_argument_values
  prefixMode: OverlayVisibilityMode.always,
  // ignore: avoid_redundant_argument_values
  suffixMode: OverlayVisibilityMode.always,
  clearButtonMode: OverlayVisibilityMode.always,
  keyboardType: const TextInputType.numberWithOptions(),
  textInputAction: TextInputAction.done,
  textCapitalization: TextCapitalization.words,
  textAlign: TextAlign.center,
  // ignore: avoid_redundant_argument_values
  readOnly: false,
  toolbarOptions: const ToolbarOptions(copy: true),
  showCursor: true,
  autofocus: true,
  obscuringCharacter: '*',
  obscureText: true,
  // ignore: avoid_redundant_argument_values
  autocorrect: true,
  smartDashesType: SmartDashesType.enabled,
  smartQuotesType: SmartQuotesType.enabled,
  style: myTextFieldTextStyle,
  strutStyle: myTextFieldStrutStyle,
);