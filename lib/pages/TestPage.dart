import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Stack(
        alignment: new Alignment(0.6, 0.6),
        children: <Widget>[
          new Align(
            alignment: FractionalOffset.center,
            child: new Container(
              width: 300.0,
              height: 400.0,
              color: Colors.grey,
            ),
          ),
          new Opacity(
            opacity: 0.5,
            child: new Container(
              color: Colors.greenAccent,
              width: 200.0,
              height: 200.0,
            ),
          ),
          new Opacity(
            opacity: 0.3,
            child: new Container(
              color: Colors.red,
              width: 100.0,
              height: 200.0,
            ),
          )
        ],
      ),
    );
  }
}
