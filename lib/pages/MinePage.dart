import 'package:flutter/material.dart';
import '../widgets/ModuleTitleNormal.dart';

class MinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[200],
      body: new Column(
        children: <Widget>[
          new ModuleTitleNormal(
            title: '我的',
            color: Colors.blue,
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
            padding: new EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
            color: Colors.white,
            child: new GestureDetector(
              child: new Row(
                children: <Widget>[
                  new Container(
                    margin: new EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
                    child: new Image.asset(
                      'images/module_mine_icon_statistics.png',
                      width: 24.0,
                      height: 24.0,
                    ),
                  ),
                  new Expanded(
                    child: new Text('安装数量统计'),
                    flex: 1,
                  ),
                  new Image.asset(
                    'images/module_all_icon_forward.png',
                    width: 32.0,
                    height: 32.0,
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(context, '/statistics');
              },
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
            padding: new EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
            color: Colors.white,
            child: new GestureDetector(
              child: new Row(
                children: <Widget>[
                  new Container(
                    margin: new EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
                    child: new Image.asset(
                      'images/module_mine_icon_password.png',
                      width: 24.0,
                      height: 24.0,
                    ),
                  ),
                  new Expanded(
                      child: new Text('修改密码'),),
                  new Image.asset(
                    'images/module_all_icon_forward.png',
                    width: 32.0,
                    height: 32.0,
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(context, '/modifypassword');
              },
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(0.0, 90.0, 0.0, 0.0),
            padding: new EdgeInsets.only(top: 15.0, bottom: 15.0),
            color: Colors.white,
            child: new Row(
              children: <Widget>[
                new Expanded(child: new Text('')),
                new InkWell(
                  onTap: () {},
                  child: new Text(
                    '退出登陆',
                    style: new TextStyle(color: Colors.blue, fontSize: 16.0),
                    maxLines: 1,
                  ),
                ),
                new Expanded(child: new Text('')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
