// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:app_one/font_style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Hello Developer'),
            backgroundColor: Colors.deepPurple,
          ),
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.only(
                  left: 15.0, top: 10.0, right: 15.0, bottom: 10.0),
              padding: EdgeInsets.only(
                  left: 50.0, top: 10.0, right: 50.0, bottom: 15.0),
              child: Column(
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/ewallet.png'),
                    height: 250,
                  ),
                  Text(
                    "ANDROID",
                    style: mainHeader,
                  ),
                  Text(
                    "save you're money for future",
                    style: subHeader,
                  )
                ],
              ),
            ),
          )),
    );
  }
}
