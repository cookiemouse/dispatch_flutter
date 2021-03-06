import '../resources/ModuleDecoration.dart';
import 'package:flutter/material.dart';
import '../widgets/ModuleTitlePend.dart';
import '../dialog/PopDialog.dart';

class PendingPage extends StatefulWidget {
  @override
  State createState() {
    return new _PendingPageState();
  }
}

class _PendingPageState extends State {
  Widget makeItem(BuildContext context, int index) {
    Widget _item = new Column(
      children: <Widget>[
        new GestureDetector(
          child: new Container(
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
                        onTap: () {
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
    return _item;
  }

  Widget _pop = new Container(
    alignment: Alignment.topRight,
    margin: const EdgeInsets.only(top: 30.0),
    child: new Stack(
      alignment: Alignment.topRight,
      children: <Widget>[
        new Container(
          alignment: Alignment.topRight,
          margin: const EdgeInsets.only(right: 23.0),
          child: new Image.asset(
            'images/module_pop_icon_triangle.png',
            width: 28.0,
            height: 28.0,
          ),
        ),
        new Container(
          margin: const EdgeInsets.only(top: 20.0, right: 15.0),
          width: 180.0,
          height: 124.0,
          decoration: ModuleDecoration.itemRoundRectDecoration(),
          child: new Material(
            color: Colors.white,
            child: new Column(
              children: <Widget>[
                new SizedBox(
                  height: 34.0,
                  child: new InkWell(
                    child: new Align(
                      alignment: Alignment.centerLeft,
                      child: new Text(
                        '待派单',
                        style: new TextStyle(fontSize: 14.0),
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
                new Divider(
                  height: 1.0,
                ),
                new SizedBox(
                  height: 34.0,
                  child: new InkWell(
                    child: new Align(
                      alignment: Alignment.centerLeft,
                      child: new Text(
                        '安装退回',
                        style: new TextStyle(fontSize: 14.0),
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
                new Divider(
                  height: 1.0,
                ),
                new SizedBox(
                  height: 34.0,
                  child: new InkWell(
                    child: new Align(
                      alignment: Alignment.centerLeft,
                      child: new Text(
                        '待审核',
                        style: new TextStyle(fontSize: 14.0),
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );

  Widget _search = new Container(
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
  );

  @override
  Widget build(BuildContext context) {
    Widget _page = new Column(
      children: <Widget>[
        new ModuleTitlePend(
          title: '待处理',
          callback: () {
            PopDialog.showPop(context, _pop);
          },
        ),
        new Flexible(
          child: new Stack(
            children: <Widget>[
              new Container(
                margin: const EdgeInsets.only(top: 50.0),
                child: new ListView.builder(
                  padding: new EdgeInsets.only(top: 0.0),
                  itemCount: 100,
                  itemBuilder: makeItem,
                ),
              ),
              _search,
            ],
          ),
        ),
      ],
    );

    return new Container(
      decoration: ModuleDecoration.backgroundDecoration(),
      child: new Scaffold(
        backgroundColor: Colors.transparent,
        body: _page,
      ),
    );
  }
}

Future funtion<Future>() {
  return null;
}
