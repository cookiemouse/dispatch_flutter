import 'dart:async';
import '../resources/ModuleDecoration.dart';
import 'package:flutter/material.dart';
import '../widgets/ModuleTitlePend.dart';

class PendingPage extends StatefulWidget {
  @override
  State createState() {
    return new _PendingPageState();
  }
}

class _PendingPageState extends State {
  Widget makeItem(BuildContext context, int index) {
    return new Column(
      children: <Widget>[
        new GestureDetector(
          child: new Container(
//        color: Colors.white,
            decoration: ModuleDecoration.itemRoundRectDecoration(),
            margin: const EdgeInsets.only(left: 12.0, right: 12.0),
            padding: const EdgeInsets.only(left: 2.0, right: 2.0),
            child: new Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Expanded(
                        child: new Text(
                      '曲水好融车',
                      style: new TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w500),
                    )),
                    new Text(
                      '待审核',
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
                new Column(
                  children: <Widget>[
                    new Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          margin: const EdgeInsets.all(4.0),
                          child: new Image.asset(
                            'images/module_item_icon_order.png',
                            width: 16.0,
                            height: 16.0,
                          ),
                        ),
                        new RichText(
                            text: new TextSpan(
                          text: '安装订单：有线 ',
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            new TextSpan(
                                text: '0',
                                style: new TextStyle(color: Colors.blue)),
                            new TextSpan(
                              text: ' 个，无线 ',
                              style: DefaultTextStyle.of(context).style,
                            ),
                            new TextSpan(
                                text: '1',
                                style: new TextStyle(color: Colors.blue)),
                            new TextSpan(
                              text: ' 个',
                              style: DefaultTextStyle.of(context).style,
                            ),
                            new TextSpan(
                              text: '\n拆除订单：有线 ',
                              style: DefaultTextStyle.of(context).style,
                            ),
                            new TextSpan(
                                text: '0',
                                style: new TextStyle(color: Colors.blue)),
                            new TextSpan(
                              text: ' 个，无线 ',
                              style: DefaultTextStyle.of(context).style,
                            ),
                            new TextSpan(
                                text: '1',
                                style: new TextStyle(color: Colors.blue)),
                            new TextSpan(
                              text: ' 个',
                              style: DefaultTextStyle.of(context).style,
                            ),
                          ],
                        )),
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
                  ],
                ),
                new Divider(),
                new Row(
                  children: <Widget>[
                    new Expanded(child: new Text('')),
                    new Container(
                      decoration:
                          ModuleDecoration.textRoundRectDecorationNormal(),
                      padding: const EdgeInsets.only(
                          left: 12.0, right: 12.0, top: 2.0, bottom: 2.0),
                      child: new Text('阿三'),
                      margin: const EdgeInsets.all(5.0),
                    ),
                    new Container(
                      decoration:
                          ModuleDecoration.textRoundRectDecorationNormal(),
                      padding: const EdgeInsets.only(
                          left: 12.0, right: 12.0, top: 2.0, bottom: 2.0),
                      child: new Text('查看路线'),
                      margin: const EdgeInsets.all(5.0),
                    ),
                    new Container(
                      decoration:
                          ModuleDecoration.textRoundRectDecorationNormal(),
                      padding: const EdgeInsets.only(
                          left: 12.0, right: 12.0, top: 2.0, bottom: 2.0),
                      child: new GestureDetector(
                        child: new Text('快速派单'),
                        onTap: (){
                          Navigator.pushNamed(context, '/choiceworker');
                        },
                      ),
                      margin: const EdgeInsets.only(
                          left: 5.0, top: 5.0, bottom: 5.0),
                    ),
                  ],
                ),
              ],
            ),
          ),
          onTap: () {},
        ),
        new Divider(
          color: Colors.transparent,
        ),
      ],
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
            new ModuleTitlePend(title: '待处理'),
            new Container(
              margin: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 8.0),
              decoration: ModuleDecoration.editRoundRectDecoration(),
              child: new Row(
                children: <Widget>[
                  new Expanded(
                    child: new TextField(
                      maxLines: 1,
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
            new Expanded(
              child: new ListView.builder(
                padding: new EdgeInsets.only(top: 0.0),
                itemCount: 100,
                itemBuilder: makeItem,
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
