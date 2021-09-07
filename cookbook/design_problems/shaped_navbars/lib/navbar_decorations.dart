// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



import 'package:flutter/widgets.dart';
import 'package:shaped_navbars/headers_footers.dart';

class NavBarDecorations extends StatelessWidget {
  const NavBarDecorations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const WavyHeader(),
        Expanded(
          child: Container(),
        ),
        const WavyFooter(),
      ],
    );

  }

}