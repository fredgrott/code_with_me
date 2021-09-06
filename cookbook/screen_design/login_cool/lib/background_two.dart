// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_cool/headers_footers.dart';

class BackgroundTwo extends StatelessWidget {
  const BackgroundTwo({Key? key}) : super(key: key);

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
