import 'package:flutter/material.dart';

class FfviiDialog extends StatelessWidget {
  FfviiDialog({
    Key key,
  }) : super(key: key);

  final TextStyle dialogTextStyle = TextStyle(
      color: Colors.white,
      fontSize: 50.0,
      fontFamily: 'Final Fantasy VII',
      shadows: <Shadow>[
        Shadow(
            offset: Offset(1.5, 1.5),
            blurRadius: 1.0,
            color: Color.fromARGB(255, 32, 33, 33)),
      ]);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(width: 2.0, color: Colors.white),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 0, 0, 160),
                  Color.fromARGB(255, 0, 0, 32)
                ])),
        height: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  left: 10.0, top: 0.0, right: 10.0, bottom: 0.0),
              child: Text(
                'Cloud',
                style: dialogTextStyle,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 10.0, top: 0.0, right: 10.0, bottom: 10.0),
              child: Text(
                'This if fine',
                style: dialogTextStyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
