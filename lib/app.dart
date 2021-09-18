import 'package:flutter/material.dart';

import './text_control.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Display'),
        ),
        body: TextControl(),
      ),
    );
  }
}
