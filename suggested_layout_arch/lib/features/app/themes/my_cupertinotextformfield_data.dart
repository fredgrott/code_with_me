// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:suggested_layout_arch/features/app/themes/my_app_textstyles.dart';



CupertinoTextFormFieldData myCupertinoTextFormFieldData = CupertinoTextFormFieldData(
  widgetKey: const Key('textformfield'),
  padding: EdgeInsetsGeometry.infinity,
  initialValue: 'value',
  keyboardType: TextInputType.datetime,
  textCapitalization: TextCapitalization.characters,
  textInputAction: TextInputAction.done,
  style: myTextFormFieldTextStyle,
  strutStyle: myTextFormFieldStrutStyle,
  textAlign: TextAlign.center,
  textAlignVertical: TextAlignVertical.center,
  autofocus: true,
  autocorrect: true,
  readOnly: false,
  showCursor: true,
  obscuringCharacter: '*',
  obscureText: true,
  smartDashesType: SmartDashesType.disabled,
  smartQuotesType: SmartQuotesType.disabled,
  enableSuggestions: true,
  maxLines: 1,
  minLines: 1,
  maxLength: 14,
  expands: true,

);