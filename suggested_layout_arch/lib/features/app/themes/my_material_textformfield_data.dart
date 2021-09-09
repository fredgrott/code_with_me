// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:suggested_layout_arch/features/app/themes/my_app_textstyles.dart';



MaterialTextFormFieldData myMaterialTextFormFieldData = MaterialTextFormFieldData(
  widgetKey: const Key('textformfield'),
  initialValue: 'value',
  keyboardType: TextInputType.emailAddress,
  textCapitalization: TextCapitalization.characters,
  textInputAction: TextInputAction.done,
  style: myTextFormFieldTextStyle,
  strutStyle: myTextFormFieldStrutStyle,
  textAlign: TextAlign.center,
  textAlignVertical: TextAlignVertical.center,
  autofocus: true,
  readOnly: false,
  showCursor: true,
  obscuringCharacter: '*',
  obscureText: true,
  autocorrect: true,
  smartDashesType: SmartDashesType.disabled,
  smartQuotesType: SmartQuotesType.disabled,
  enableSuggestions: true,
  maxLengthEnforcement: MaxLengthEnforcement.enforced,
  maxLines: 2,
  maxLength: 12,
  minLines: 2,

);