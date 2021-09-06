// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final double topRight;
  final double bottomRight;

  const InputWidget(this.topRight, this.bottomRight, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40, bottom: 30),
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 40,
        child: Material(
          elevation: 10,
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(bottomRight),
                  topRight: Radius.circular(topRight),),),
          child: const Padding(
            padding: EdgeInsets.only(left: 40, right: 20, top: 10, bottom: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "JohnDoe@example.com",
                  hintStyle: TextStyle(color: Color(0xFFE1E1E1), fontSize: 14,),),
            ),
          ),
        ),
      ),
    );
  }
}
