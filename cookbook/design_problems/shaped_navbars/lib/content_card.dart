// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shaped_navbars/mylistofcards.dart';

class ContentCard extends StatelessWidget {
  const ContentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.infinity,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: ListView(
          children: <Widget>[
            for (int i = 0; i < 10; i++) const MyListOfCards(),
          ],
        ),

      ),
    );
  }
}
