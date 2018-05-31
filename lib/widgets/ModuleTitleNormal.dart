import 'package:flutter/material.dart';

Color mColor;

class ModuleTitleNormal extends StatelessWidget {
  final String title;
  final Color color;

  ModuleTitleNormal({this.title, this.color}) {
    if (null == color) {
      mColor = Colors.transparent;
    } else {
      mColor = color;
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(color: mColor),
      padding: const EdgeInsets.only(
          left: 20.0, top: 22.0, right: 20.0, bottom: 10.0),
      child: new Stack(
        alignment: Alignment.centerLeft,
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
          new Center(
            child: new Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ),
          new Divider(
            color: Colors.transparent,
          )
        ],
      ),
//      child: new Row(
//        children: <Widget>[
//          new GestureDetector(
//            child: new Image.asset(
//              'images/module_all_icon_switch_role.png',
//              width: 32.0,
//              height: 32.0,
//            ),
//            onTap: () {
//              Navigator.pushNamed(context, '/managerhome');
//            },
//          ),
//          new Expanded(
//            child: new Center(
//              child: new Text(
//                title,
//                style: const TextStyle(color: Colors.white, fontSize: 18.0),
//              ),
//            ),
//          ),
//          new Image.asset(
//            '',
//            width: 32.0,
//            height: 32.0,
//            color: Colors.transparent,
//          )
//        ],
//      ),
    );
  }
}
