import 'package:flutter/material.dart';
import '../resources/ModuleDecoration.dart';
import '../widgets/ModuleTitlePend.dart';

class PendedPage extends StatefulWidget {
  @override
  State createState() {
    return new _PendedPageState();
  }
}

class _PendedPageState extends State {
  Widget makeItem(BuildContext context, int index) {
    return new Container(
      margin: const EdgeInsets.only(bottom: 15.0, left: 12.0, right: 12.0),
      padding: const EdgeInsets.only(left: 2.0, right: 2.0),
      decoration: ModuleDecoration.itemRoundRectDecoration(),
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Expanded(
                  child: new Text(
                '曲水好融车',
                style:
                    new TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              )),
              new Text(
                '已派单',
                style: new TextStyle(fontSize: 16.0, color: Colors.amber),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              new Text(
                'TY-I20180126215634225',
                style: new TextStyle(color: Colors.grey),
              ),
              new Container(
                margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                child: new Text(
                  '|',
                  style: new TextStyle(color: Colors.grey),
                ),
              ),
              new Text(
                '2018-01-26 23:56',
                style: new TextStyle(color: Colors.grey),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              new Container(
                margin: const EdgeInsets.all(4.0),
                child: new Image.asset(
                  'images/module_item_icon_address.png',
                  width: 16.0,
                  height: 16.0,
                ),
              ),
              new Text('江苏省南京市雨花台区'),
            ],
          ),
          new Divider(),
          new Row(
            children: <Widget>[
              new Expanded(child: new Text('')),
              new Container(
                decoration: ModuleDecoration.textRoundRectDecorationMore(),
                padding: const EdgeInsets.only(
                    left: 12.0, right: 12.0, top: 2.0, bottom: 2.0),
                child: new Text('阿三'),
                margin: const EdgeInsets.all(5.0),
              ),
              new Container(
                decoration: ModuleDecoration.textRoundRectDecorationMore(),
                padding: const EdgeInsets.only(
                    left: 12.0, right: 12.0, top: 2.0, bottom: 2.0),
                child: new Text('查看路线'),
                margin: const EdgeInsets.all(5.0),
              ),
              new Container(
                decoration: ModuleDecoration.textRoundRectDecorationMore(),
                padding: const EdgeInsets.only(
                    left: 12.0, right: 12.0, top: 2.0, bottom: 2.0),
                child: new Text('快速派单'),
                margin: const EdgeInsets.only(left: 5.0, top: 5.0, bottom: 5.0),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: ModuleDecoration.backgroundDecoration(),
      child: new Scaffold(
        backgroundColor: Colors.transparent,
        body: new Column(
          children: <Widget>[
            new ModuleTitlePend(title: '已处理'),
            new Expanded(
              child: new Stack(
                children: <Widget>[
                  new Container(
                    child: new ListView.builder(
                      padding: new EdgeInsets.only(top: 0.0),
                      itemCount: 100,
                      itemBuilder: makeItem,
                    ),
                    margin: const EdgeInsets.only(top: 50.0),
                  ),
                  new Container(
                    margin: const EdgeInsets.only(
                        left: 12.0, right: 12.0, bottom: 8.0),
                    decoration: ModuleDecoration.editRoundRectDecoration(),
                    child: new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new TextField(
                            maxLines: 1,
                            keyboardType: TextInputType.text,
                            decoration: new InputDecoration(
                              contentPadding: const EdgeInsets.all(10.0),
                              hintText: '请输入客户名称/订单号',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future funtion<Future>() {
  return null;
}
