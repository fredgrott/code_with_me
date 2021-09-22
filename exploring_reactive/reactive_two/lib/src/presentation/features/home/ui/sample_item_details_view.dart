// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:reactive_two/src/localization_gen/l10n.dart';

/// Displays detailed information about a SampleItem.
class SampleItemDetailsView extends StatelessWidget {

  final GlobalKey<NavigatorState> navigatorKey;
  
  const SampleItemDetailsView({Key? key, required this.navigatorKey}) : super(key: key);

  static const routeName = '/sample_item';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).appListDetailTitle),
      ),
      body: Center(
        child: Text( S.of(context).appListDetailBody, key: const Key("ListItemBody"),),
      ),
    );
  }
}
