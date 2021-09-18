import 'package:flutter/material.dart';

class DisplayText extends StatelessWidget {
  final String displayedText;

  DisplayText(this.displayedText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        displayedText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
