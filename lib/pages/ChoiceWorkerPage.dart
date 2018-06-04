import 'package:flutter/material.dart';
import '../widgets/ModuleTitleBack.dart';
import '../resources/ModuleDecoration.dart';

class ChoiceWorkerPage extends StatefulWidget {
  @override
  State createState() {
    return new _ChoiceWorkerPage();
  }
}

class _ChoiceWorkerPage extends State {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new ModuleTitleBack(
            color: Colors.blue,
            title: '选择工程师',
          ),
          new Container(
            padding: const EdgeInsets.only(
              left: 10.0,
              top: 5.0,
            ),
            child: new Row(
              children: <Widget>[
                new Text(
                  '已选中:',
                  style: new TextStyle(color: Colors.blue),
                ),
                new Text(
                  'worker',
                  style: new TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          new Divider(
            color: Colors.blue,
          ),
          new Container(
            margin: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 8.0),
            decoration: ModuleDecoration.editRoundRectDecorationBlue(),
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: new TextField(
                    maxLines: 1,
                    decoration: new InputDecoration(
                      contentPadding: const EdgeInsets.all(8.0),
                      hintText: '工号/姓名/分管区域',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                new Container(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: new GestureDetector(
                    child: new Image.asset(
                      'images/module_all_icon_search.png',
                      height: 28.0,
                      width: 28.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          new Expanded(
              child: new Container(
            color: Colors.white,
          )),
//        new Expanded(child: new ListView.builder(itemBuilder: null)),
          new Divider(
            color: Colors.blue,
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: new Container(
                  margin: const EdgeInsets.only(
                      left: 10.0, right: 10.0, bottom: 20.0),
                  height: 45.0,
                  child: new RaisedButton(
                      color: Colors.blue,
                      child: new Text(
                        '派给自己',
                        style: new TextStyle(color: Colors.white),
                      ),
                      onPressed: () {}),
                ),
              ),
              new Expanded(
                child: new Container(
                  margin: const EdgeInsets.only(
                      left: 10.0, right: 10.0, bottom: 20.0),
                  height: 45.0,
                  child: new RaisedButton(
                      color: Colors.blue,
                      child: new Text(
                        '派单',
                        style: new TextStyle(color: Colors.white),
                      ),
                      onPressed: () {}),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
