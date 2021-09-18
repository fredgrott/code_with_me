// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



// known as a dirty dependency in that it has a future attached
// and depends upon completion of system UI stuff


import 'package:reactive_zero/src/presentation/features/settings/viewmodels/settings_viewmodel.dart';
import 'package:reactive_zero/src/services/settings_service.dart';

final settingsViewModel = SettingsViewModel(SettingsService());
