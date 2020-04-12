import 'package:flutter/material.dart';

class FfviiiDialog extends StatelessWidget {
  FfviiiDialog({
    Key key,
  }) : super(key: key);

  final TextStyle dialogTextStyle = TextStyle(
      color: Colors.white,
      fontSize: 30.0,
      fontFamily: 'SeeD Computer',
      shadows: <Shadow>[
        Shadow(
            offset: Offset(1.5, 1.5),
            blurRadius: 1.0,
            color: Color.fromARGB(255, 0, 0, 0)),
      ]);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        decoration: BoxDecoration(
            border:
                Border.all(color: Color.fromARGB(255, 41, 41, 41), width: 2.0)),
        child: Container(
          decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                    width: 1.5, color: Color.fromARGB(255, 132, 132, 132)),
                top: BorderSide(
                    width: 1.5, color: Color.fromARGB(255, 132, 132, 132)),
                right: BorderSide(
                    width: 1.5, color: Color.fromARGB(255, 58, 58, 58)),
                bottom: BorderSide(
                    width: 1.5, color: Color.fromARGB(255, 58, 58, 58)),
              ),
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromARGB(255, 66, 57, 57),
                    Color.fromARGB(255, 99, 99, 99)
                  ])),
          height: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                    left: 10.0, top: 10.0, right: 10.0, bottom: 5.0),
                child: Text(
                  'Squall',
                  style: dialogTextStyle,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: 10.0, top: 5.0, right: 10.0, bottom: 10.0),
                child: Text(
                  '"Whatever."',
                  style: dialogTextStyle,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
