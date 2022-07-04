// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _link = "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg";
  String _link2 = "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg";
  String _aux = "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg";

  void _changeLink() {
    setState(() {
      
      if (_aux == _link) {
        _aux = _link2;
      } else {
        _aux = _link;
      }
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Look at this owl:',
            ), 
            Image.network(_aux)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeLink,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
