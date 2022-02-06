// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

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
              color: Colors.deepPurple,
              margin: EdgeInsets.only(
                  left: 70.0, top: 10.0, right: 0.0, bottom: 15.0),
              padding: EdgeInsets.only(
                  left: 15.0, top: 0.0, right: 0.0, bottom: 15.0),
              child: Column(
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/ewallet.png'),
                    height: 200,
                  ),
                  Text("Hello")
                ],
              ),
            ),
          )),
    );
  }
}
