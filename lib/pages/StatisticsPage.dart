import 'package:flutter/material.dart';
import '../widgets/ModuleTitleBack.dart';
import '../resources/ModuleDecoration.dart';

bool mIsManger = true;

class StatisticsPage extends StatefulWidget {
  final bool isManager;

  StatisticsPage({this.isManager}) {
    if (null == isManager) {
      mIsManger = true;
    } else {
      mIsManger = isManager;
    }
  }

  @override
  State createState() {
    return new _StatisticsPageState();
  }
}

class _StatisticsPageState extends State {
  Widget titleManager() {
    return new Row(
      children: <Widget>[
        new Expanded(
          child: new Text(
            '工程师',
            style: new TextStyle(fontSize: 16.0, color: Colors.black54),
          ),
          flex: 2,
        ),
        new Expanded(
            child: new Center(
          child: new Text(
            '上门',
            style: new TextStyle(fontSize: 16.0, color: Colors.black54),
          ),
        )),
        new Expanded(
            child: new Center(
          child: new Text(
            '车辆',
            style: new TextStyle(fontSize: 16.0, color: Colors.black54),
          ),
        )),
        new Expanded(
            child: new Center(
          child: new Text(
            '有线',
            style: new TextStyle(fontSize: 16.0, color: Colors.black54),
          ),
        )),
        new Expanded(
            child: new Center(
          child: new Text(
            '无线',
            style: new TextStyle(fontSize: 16.0, color: Colors.black54),
          ),
        )),
      ],
    );
  }

  Widget titleWorker() {
    return new Row(
      children: <Widget>[
        new Expanded(
          child: new Text(
            '类型',
            style: new TextStyle(fontSize: 16.0, color: Colors.black54),
          ),
        ),
        new Container(
          margin: const EdgeInsets.only(right: 8.0),
          child: new Text(
            '数量',
            textAlign: TextAlign.left,
            style: new TextStyle(fontSize: 16.0, color: Colors.black54),
          ),
        ),
      ],
    );
  }

  Widget makeItemManager(BuildContext context, int index) {
    return new Container(
      height: 40.0,
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Text(
              '1003王吉平',
              maxLines: 1,
              style: new TextStyle(color: Colors.black54),
            ),
            flex: 2,
          ),
          new Expanded(
              child: new Center(
            child: new Text(
              '5',
              maxLines: 1,
              style: new TextStyle(color: Colors.black54),
            ),
          )),
          new Expanded(
              child: new Center(
            child: new Text(
              '4',
              maxLines: 1,
              style: new TextStyle(color: Colors.black54),
            ),
          )),
          new Expanded(
              child: new Center(
            child: new Text(
              '23',
              maxLines: 1,
              style: new TextStyle(color: Colors.black54),
            ),
          )),
          new Expanded(
              child: new Center(
            child: new Text(
              '19',
              maxLines: 1,
              style: new TextStyle(color: Colors.black54),
            ),
          )),
        ],
      ),
    );
  }

  Widget makeItemWorker(BuildContext context, int index) {
    return new Container(
      height: 40.0,
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Text(
              '离线设备-新装&改装(无线)',
              maxLines: 1,
              style: new TextStyle(color: Colors.black54),
            ),
          ),
          new Container(
            margin: const EdgeInsets.only(right: 8.0),
            child: new RichText(
              text: new TextSpan(children: <TextSpan>[
                new TextSpan(
                  text: '0',
                  style: new TextStyle(color: Colors.blue),
                ),
                new TextSpan(
                  text: '  台',
                  style: new TextStyle(color: Colors.black54),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget bottomStatistics() {
    if (mIsManger) {
      return new Container(
        color: Colors.blue,
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        height: 45.0,
        child: new Row(
          children: <Widget>[
            new Expanded(
                child: new Text(
              '总量：',
              style: new TextStyle(color: Colors.white),
            )),
            new Text(
              '5/4/198/150',
              style: new TextStyle(color: Colors.white),
            ),
          ],
        ),
      );
    }
    return new Container();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new Column(
            children: <Widget>[
              new Expanded(
                  flex: 1,
                  child: new Container(
                    color: Colors.blue,
                  )),
              new Expanded(
                  flex: 2,
                  child: new Container(
                    color: Colors.blue[100],
                  ))
            ],
          ),
          new Column(
            children: <Widget>[
              new ModuleTitleBack(
                color: Colors.blue,
                title: '安装数量',
              ),
              new Container(
                margin: const EdgeInsets.only(top: 30.0, bottom: 30.0),
                child: new Center(
                  child: new Text(
                    '选择年月:',
                    style: new TextStyle(color: Colors.white),
                  ),
                ),
              ),
              new Expanded(
                child: new Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    top: 10.0,
                  ),
                  decoration: ModuleDecoration.itemRoundRectDecorationTop(),
                  child: new Column(
                    children: <Widget>[
//                      titleManager(),
//                      titleWorker(),
                      mIsManger ? titleManager() : titleWorker(),
                      new Expanded(
                        child: new Container(
                          margin: const EdgeInsets.only(top: 10.0),
                          child: new ListView.builder(
                            padding:
                                const EdgeInsets.only(top: 0.0, bottom: 0.0),
                            itemCount: 10,
//                            itemBuilder: makeItemManager,
//                            itemBuilder: makeItemWorker,
                            itemBuilder:
                                mIsManger ? makeItemManager : makeItemWorker,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              bottomStatistics(),
            ],
          ),
        ],
      ),
    );
  }
}
