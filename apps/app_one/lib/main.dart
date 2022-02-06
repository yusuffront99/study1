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
          backgroundColor: Colors.greenAccent,
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.mail))
          ],
        ),
        body: const Center(
            child: Image(
          image: AssetImage('assets/images/ewallet.png'),
          height: 200,
        )),
      ),
    );
  }
}
