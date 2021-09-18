import 'package:flutter/material.dart';

import './text.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  final texts = const [
    'The First Text',
    'The Second Text',
    'The Third Text',
    'The Fourth Text',
    'The Fifth Text',
  ];

  var _displayed_text_index = 0;

  void _increaseIndex() {
    setState(() {
      _displayed_text_index = _displayed_text_index + 1;
    });
    print(_displayed_text_index);
  }

  void _resetIndex() {
    setState(() {
      _displayed_text_index = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _displayed_text_index < texts.length
          ? <Widget>[
              DisplayText(
                texts[_displayed_text_index],
              ),
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('Next'),
                onPressed: _increaseIndex,
              ),
            ]
          : <Widget>[
              Text(
                'No More Text!',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              FlatButton(
                child: Text(
                  'Restart',
                  textAlign: TextAlign.center,
                ),
                textColor: Colors.blue,
                onPressed: _resetIndex,
                minWidth: double.infinity,
              )
            ],
    );
  }
}
