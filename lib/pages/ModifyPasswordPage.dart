import 'package:flutter/material.dart';
import '../widgets/ModuleTitleBack.dart';

class ModifyPasswordPage extends StatefulWidget {
  @override
  State createState() {
    return new _ModifyPasswordPageState();
  }
}

class _ModifyPasswordPageState extends State<ModifyPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Column(
          children: <Widget>[
            new ModuleTitleBack(
              title: '派工',
              color: Colors.blue,
            ),
            new Container(
              margin: const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
              child: new Row(
                children: <Widget>[
                  new Text('原密码：',
                      style:
                          new TextStyle(fontSize: 16.0, color: Colors.black54)),
                  new Expanded(
                      child: new TextField(
                    decoration: new InputDecoration(
                      contentPadding: const EdgeInsets.all(5.0),
                      border: InputBorder.none,
                    ),
                  )),
                ],
              ),
            ),
            new Container(
              child: new Divider(
                color: Colors.blue,
              ),
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            ),
            new Container(
              margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: new Row(
                children: <Widget>[
                  new Text('新密码：',
                      style:
                          new TextStyle(fontSize: 16.0, color: Colors.black54)),
                  new Expanded(
                    child: new TextField(
                      decoration: new InputDecoration(
                        contentPadding: const EdgeInsets.all(5.0),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              child: new Divider(
                color: Colors.blue,
              ),
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            ),
            new Container(
              margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: new Row(
                children: <Widget>[
                  new Text(
                    '确认新密码：',
                    style: new TextStyle(fontSize: 16.0, color: Colors.black54),
                  ),
                  new Expanded(
                    child: new TextField(
                      decoration: new InputDecoration(
                        contentPadding: const EdgeInsets.all(5.0),
                        border: InputBorder.none,
                      ),
                    ),
                  )
                ],
              ),
            ),
            new Container(
              child: new Divider(
                color: Colors.blue,
              ),
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            ),
            new Container(
              margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: new RaisedButton(
                  child: new Text(
                    '确认',
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                  onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}