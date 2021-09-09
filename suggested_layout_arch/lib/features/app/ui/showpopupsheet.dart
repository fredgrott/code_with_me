// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

dynamic showExampleDialog(BuildContext context, String text) {
  showPlatformDialog<dynamic>(
    context: context,
    builder: (_) => PlatformAlertDialog(
      title: const Text('Alert'),
      content: Text('$text content'),
      actions: <Widget>[
        PlatformDialogAction(
          material: (_, __) => MaterialDialogActionData(),
          cupertino: (_, __) => CupertinoDialogActionData(),
          child: PlatformText('Cancel'),
          onPressed: () => Navigator.pop(context),
        ),
        PlatformDialogAction(
          child: PlatformText('OK'),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    ),
  );
}

dynamic showPopupSheet(BuildContext context, String text) {
  showPlatformModalSheet<dynamic>(
    context: context,
    builder: (_) => PlatformWidget(
      material: (_, __) => androidPopupContent(context, text),
      cupertino: (_, __) => cupertinoSheetContent(context, text),
    ),
  );
}


Widget androidPopupContent(BuildContext context, String text) {
  return Container(
    padding: const EdgeInsets.all(16),
    child: Column(
      children: <Widget>[
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(8),
            child: PlatformText('Option 1 $text'),
          ),
          onTap: () => Navigator.pop(context),
        ),
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(8),
            child: PlatformText('Option 2 $text'),
          ),
          onTap: () => Navigator.pop(context),
        ),
      ],
    ),
  );
}

Widget cupertinoSheetContent(BuildContext context, String text) {
  return CupertinoActionSheet(
    title: Text('$text Favorite Dessert'),
    message:
        const Text('Please select the best dessert from the options below.'),
    actions: <Widget>[
      CupertinoActionSheetAction(
        child: const Text('Profiteroles'),
        onPressed: () {
          Navigator.pop(context, 'Profiteroles');
        },
      ),
      CupertinoActionSheetAction(
        child: const Text('Cannolis'),
        onPressed: () {
          Navigator.pop(context, 'Cannolis');
        },
      ),
      CupertinoActionSheetAction(
        child: const Text('Trifle'),
        onPressed: () {
          Navigator.pop(context, 'Trifle');
        },
      ),
    ],
    cancelButton: CupertinoActionSheetAction(
      isDefaultAction: true,
      onPressed: () {
        Navigator.pop(context, 'Cancel');
      },
      child: const Text('Cancel'),
    ),
  );
}
