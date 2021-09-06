// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CirclePink extends StatelessWidget {
  const CirclePink({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(-120.0, 90.0),
      child: const Material(
        color: Colors.pink,
        shape: CircleBorder(side: BorderSide(color: Colors.white, width: 15.0)),
        child: Padding(padding: EdgeInsets.all(120)),
      ),
    );
  }
}

class CircleYellow extends StatelessWidget {
  const CircleYellow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0.0, 150.0),
      child: const Material(
        color: Colors.yellow,
        shape: CircleBorder(side: BorderSide(color: Colors.white, width: 15.0)),
        child: Padding(padding: EdgeInsets.all(140)),
      ),
    );
  }
}
