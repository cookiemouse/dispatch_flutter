import 'package:flutter/material.dart';
import '../widgets/ModuleTitleBack.dart';
import '../resources/ModuleDecoration.dart';
import '../resources/ModuleBorder.dart';

String mStr = '';

class EditReasonPage extends StatefulWidget {
  @override
  State createState() {
    return new _EditReasonPageState();
  }
}

class _EditReasonPageState extends State {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new ModuleTitleBack(
            title: '填写原因',
            color: Colors.blue,
          ),
          new Expanded(
            child: new ListView(
              padding: const EdgeInsets.all(0.0),
              children: <Widget>[
                new Container(
                  decoration: ModuleDecoration.editRoundRectDecorationReason(),
                  height: 380.0,
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                  child: new TextField(
                    onChanged: (str) {
                      mStr = str;
                    },
                    maxLines: 20,
                    maxLength: 200,
                    maxLengthEnforced: true,
                    style: new TextStyle(fontSize: 18.0, color: Colors.black),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(
                          left: 5.0, right: 5.0, top: 5.0),
                      counterText: '',
                      hintText: '填写备注信息',
                    ),
                  ),
                ),
                new Container(
                  margin: const EdgeInsets.only(top: 4.0, right: 20.0),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(child: new Text('')),
                      new Text(
                        '${mStr.length}/200',
                        style: new TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                new Container(
                  margin: const EdgeInsets.only(
                      top: 20.0, left: 100.0, right: 100.0),
                  height: 48.0,
                  child: new RaisedButton(
                    child: new Text(
                      '下一步',
                      style: new TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                    shape: ModuleBorder.buttonRoundBorder(),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
