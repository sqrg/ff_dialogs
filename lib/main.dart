import 'package:flutter/material.dart';

import 'package:ff_dialogs/widgets/ffvi_dialog.dart';
import 'package:ff_dialogs/widgets/ffvii_dialog.dart';
import 'package:ff_dialogs/widgets/ffviii_dialog.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Final Fantasy Dialogs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Final Fantasy Dialogs'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
                child: Text('Final Fantasy VI'),
                onPressed: () => {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return FfviDialog();
                          })
                    }),
            FlatButton(
                child: Text('Final Fantasy VII'),
                onPressed: () => {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return FfviiDialog();
                          })
                    }),
            FlatButton(
                child: Text('Final Fantasy VIII'),
                onPressed: () => {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return FfviiiDialog();
                          })
                    }),
          ],
        ),
      ),
    );
  }
}
