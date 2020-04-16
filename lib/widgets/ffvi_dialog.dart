import 'package:flutter/material.dart';

class FfviDialog extends StatelessWidget {
  FfviDialog({
    Key key,
  }) : super(key: key);

  final TextStyle dialogTextStyle = TextStyle(
      color: Colors.white,
      fontSize: 30.0,
      fontFamily: 'Final Fantasy VI',
      shadows: <Shadow>[
        Shadow(
            offset: Offset(2, 2),
            blurRadius: 0.0,
            color: Color.fromARGB(255, 0, 0, 0)),
      ]);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.5),
            border: Border.all(width: 2.0, color: Colors.white),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 75, 75, 181),
                  Color.fromARGB(255, 0, 0, 66)
                ])),
        height: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  left: 15.0, top: 5.0, right: 15.0, bottom: 0.0),
              child: Text(
                'LOCKE: I PREFER the term treasure hunting!',
                style: dialogTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
