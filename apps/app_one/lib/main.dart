// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:app_one/font_style.dart';
import 'package:flutter/material.dart';
import 'package:app_one/custom_colors.dart';

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
                color: Colors.white,
                // margin: EdgeInsets.only(
                //     left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                padding: EdgeInsets.only(
                    left: 50.0, top: 0.0, right: 0.0, bottom: 0.0),
                child: Row(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/images/ewallet.png'),
                          height: 250,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 1.0),
                          child: Text(
                            "ANDROID",
                            style: mainHeader,
                          ),
                        ),
                        Text(
                          "save your money little bit and we \nwill help to be rich",
                          style: subHeader,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ],
                )),
          )),
    );
  }
}
