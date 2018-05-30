import 'package:flutter/material.dart';

class ModuleTitleOrder extends StatelessWidget {
  final String title;

  ModuleTitleOrder({this.title});

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.only(
          left: 20.0, top: 22.0, right: 20.0, bottom: 10.0),
      child: new Row(
        children: <Widget>[
          new GestureDetector(
            child: new Image.asset(
              'images/module_all_icon_switch_role.png',
              width: 32.0,
              height: 32.0,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/managerhome');
            },
          ),
          new Expanded(
            child: new Center(
              child: new Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
          ),
          new GestureDetector(
            child: new Image.asset(
              'images/module_all_icon_locate.png',
              width: 32.0,
              height: 32.0,
            ),
          ),
        ],
      ),
    );
  }
}
