import 'package:flutter/material.dart';
import '../resources/ModuleDecoration.dart';
import '../resources/ModuleBorder.dart';
import '../widgets/ModuleTitleBack.dart';

class InstallPage extends StatefulWidget {
  @override
  State createState() {
    return new _InstallPageState();
  }
}

class _InstallPageState extends State {
  Widget carNo() {
    return new Container(
      padding: const EdgeInsets.only(left: 20.0, right: 10.0),
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Image.asset(
                'images/module_all_icon_carno.png',
                height: 24.0,
                width: 24.0,
              ),
              new Expanded(
                child: new Container(
                  margin: const EdgeInsets.only(left: 10.0),
                  child: new Column(
                    children: <Widget>[
                      new Align(
                        child: new Text('车牌号'),
                        alignment: Alignment.centerLeft,
                      ),
                      new Row(
                        children: <Widget>[
                          new Expanded(
                            child: new TextField(
                              decoration: new InputDecoration(
                                  contentPadding: const EdgeInsets.only(
                                      top: 1.0, bottom: 1.0),
                                  labelStyle: new TextStyle(height: 0.0),
                                  helperStyle: new TextStyle(height: 0.0),
                                  hintText: '请输入车牌号',
                                  border: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              new Container(
                child: new Stack(
                  alignment: Alignment.topRight,
                  children: <Widget>[
                    new Image.asset(
                      'images/mojule_all_icon_camera.png',
                      height: 50.0,
                      width: 80.0,
                    ),
                    new Image.asset(
                      'images/module_install_pic_icon_delete.png',
                      width: 28.0,
                      height: 28.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          new Container(
            margin: const EdgeInsets.only(left: 34.0),
            child: new Divider(
              height: 1.0,
              color: Colors.blue,
            ),
          ),
          new Container(
            margin: const EdgeInsets.only(left: 34.0),
            child: new Align(
              alignment: Alignment.centerLeft,
              child: new Text(
                '请输入车牌号',
                style: new TextStyle(color: Colors.orange),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget carFrame() {
    return new Container(
      padding: const EdgeInsets.only(left: 20.0, right: 10.0),
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Image.asset(
                'images/module_all_icon_carno.png',
                height: 24.0,
                width: 24.0,
              ),
              new Expanded(
                child: new Container(
                  margin: const EdgeInsets.only(left: 10.0),
                  child: new Column(
                    children: <Widget>[
                      new Align(
                        child: new Text('车架号'),
                        alignment: Alignment.centerLeft,
                      ),
                      new Row(
                        children: <Widget>[
                          new Expanded(
                            child: new TextField(
                              decoration: new InputDecoration(
                                  contentPadding: const EdgeInsets.only(
                                      top: 1.0, bottom: 1.0),
                                  labelStyle: new TextStyle(height: 0.0),
                                  helperStyle: new TextStyle(height: 0.0),
                                  hintText: '请输入车架号',
                                  border: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              new Container(
                child: new Stack(
                  alignment: Alignment.topRight,
                  children: <Widget>[
                    new Image.asset(
                      'images/mojule_all_icon_camera.png',
                      height: 50.0,
                      width: 80.0,
                    ),
                    new Image.asset(
                      'images/module_install_pic_icon_delete.png',
                      width: 28.0,
                      height: 28.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          new Container(
            margin: const EdgeInsets.only(left: 34.0),
            child: new Divider(
              height: 1.0,
              color: Colors.blue,
            ),
          ),
          new Container(
            margin: const EdgeInsets.only(left: 34.0),
            child: new Align(
              alignment: Alignment.centerLeft,
              child: new Text(
                '请输入车架号',
                style: new TextStyle(color: Colors.orange),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget carModel() {
    return new Container(
      padding: const EdgeInsets.only(left: 20.0, right: 10.0),
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Image.asset(
                'images/module_all_icon_carno.png',
                height: 24.0,
                width: 24.0,
              ),
              new Expanded(
                child: new Container(
                  margin: const EdgeInsets.only(left: 10.0),
                  child: new Column(
                    children: <Widget>[
                      new Align(
                        child: new Text('车型'),
                        alignment: Alignment.centerLeft,
                      ),
                      new Row(
                        children: <Widget>[
                          new Expanded(
                            child: new TextField(
                              decoration: new InputDecoration(
                                  contentPadding: const EdgeInsets.only(
                                      top: 1.0, bottom: 1.0),
                                  labelStyle: new TextStyle(height: 0.0),
                                  helperStyle: new TextStyle(height: 0.0),
                                  hintText: '请输入车型',
                                  border: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          new Container(
            margin: const EdgeInsets.only(left: 34.0),
            child: new Align(
              alignment: Alignment.centerLeft,
              child: new Text(
                '请输入车型',
                style: new TextStyle(color: Colors.orange),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget carPic() {
    return new Container(
      height: 300.0,
      child: new GridView.builder(
        itemCount: 9,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) => new Center(
              child: new Text('item $index'),
            ),
      ),
    );
  }

  Widget makeItem(BuildContext context, int index) {
    return new Container(
      decoration: ModuleDecoration.itemRoundRectShadowDecoration(),
      margin: const EdgeInsets.only(
          left: 10.0, right: 10.0, top: 10.0, bottom: 40.0),
      padding: const EdgeInsets.only(left: 20.0, right: 10.0),
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Image.asset(
                'images/module_all_icon_carno.png',
                height: 24.0,
                width: 24.0,
              ),
              new Expanded(
                child: new Container(
                  margin: const EdgeInsets.only(left: 10.0),
                  child: new Column(
                    children: <Widget>[
                      new Align(
                        child: new Text('新有线设备'),
                        alignment: Alignment.centerLeft,
                      ),
                      new Row(
                        children: <Widget>[
                          new Expanded(
                            child: new TextField(
                              decoration: new InputDecoration(
                                  contentPadding: const EdgeInsets.only(
                                      top: 1.0, bottom: 1.0),
                                  hintText: '请输入设备号(至少8位)',
                                  hintStyle: new TextStyle(fontSize: 14.0),
                                  border: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              new Container(
                padding: const EdgeInsets.only(right: 10.0),
                child: new Image.asset(
                  'images/mojule_all_icon_camera.png',
                  height: 28.0,
                  width: 28.0,
                ),
              ),
              new Container(
                padding: const EdgeInsets.only(right: 10.0),
                child: new Image.asset(
                  'images/mojule_all_icon_camera.png',
                  height: 28.0,
                  width: 28.0,
                ),
              ),
            ],
          ),
          new Container(
            margin: const EdgeInsets.only(left: 34.0),
            child: new Divider(
              height: 1.0,
              color: Colors.blue,
            ),
          ),
          new Container(
            margin: const EdgeInsets.only(left: 34.0),
            child: new Align(
              alignment: Alignment.centerLeft,
              child: new Text(
                '请输入设备号',
                style: new TextStyle(color: Colors.orange),
              ),
            ),
          ),
          new Row(
            children: <Widget>[
              new Image.asset(
                'images/module_all_icon_carno.png',
                height: 24.0,
                width: 24.0,
              ),
              new Expanded(
                child: new Container(
                  margin: const EdgeInsets.only(left: 10.0),
                  child: new Column(
                    children: <Widget>[
                      new Align(
                        child: new Text('安装位置'),
                        alignment: Alignment.centerLeft,
                      ),
                      new Row(
                        children: <Widget>[
                          new Expanded(
                            child: new TextField(
                              decoration: new InputDecoration(
                                  contentPadding: const EdgeInsets.only(
                                      top: 1.0, bottom: 1.0),
                                  hintText: '请输入安装位置',
                                  hintStyle: new TextStyle(fontSize: 14.0),
                                  border: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              new Container(
                child: new Stack(
                  alignment: Alignment.topRight,
                  children: <Widget>[
                    new Image.asset(
                      'images/mojule_all_icon_camera.png',
                      height: 50.0,
                      width: 80.0,
                    ),
                    new Image.asset(
                      'images/module_install_pic_icon_delete.png',
                      width: 28.0,
                      height: 28.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          new Container(
            margin: const EdgeInsets.only(left: 34.0),
            child: new Divider(
              height: 1.0,
              color: Colors.blue,
            ),
          ),
          new Container(
            margin: const EdgeInsets.only(left: 34.0),
            child: new Align(
              alignment: Alignment.centerLeft,
              child: new Text(
                '请输入安装位置',
                style: new TextStyle(color: Colors.orange),
              ),
            ),
          ),
          new Row(
            children: <Widget>[
              new Image.asset(
                'images/module_all_icon_carno.png',
                height: 24.0,
                width: 24.0,
              ),
              new Expanded(
                child: new Container(
                  margin: const EdgeInsets.only(left: 10.0),
                  child: new Column(
                    children: <Widget>[
                      new Align(
                        child: new Text('接线图'),
                        alignment: Alignment.centerLeft,
                      ),
                      new Align(
                        child: new Text(
                          '请输入设备号',
                          style: new TextStyle(color: Colors.orange),
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                    ],
                  ),
                ),
              ),
              new Container(
                child: new Stack(
                  alignment: Alignment.topRight,
                  children: <Widget>[
                    new Image.asset(
                      'images/mojule_all_icon_camera.png',
                      height: 50.0,
                      width: 80.0,
                    ),
                    new Image.asset(
                      'images/module_install_pic_icon_delete.png',
                      width: 28.0,
                      height: 28.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new ModuleTitleBack(
            color: Colors.blue,
          ),
//          new Expanded(child: carPic()),
          new Expanded(
            child: new CustomScrollView(
              slivers: <Widget>[
                //  车牌号
                new SliverList(
                  delegate: new SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return carNo();
                    },
                    childCount: 1,
                  ),
                ),

                //  车架号
                new SliverList(
                  delegate: new SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return carFrame();
                    },
                    childCount: 1,
                  ),
                ),

                //  车型
                new SliverList(
                  delegate: new SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return carModel();
                    },
                    childCount: 1,
                  ),
                ),

                // 车辆图片
                new SliverGrid(
                  gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 160.0,
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing: 0.0,
                    childAspectRatio: 1.8,
                  ),
                  delegate: new SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return new Center(
                          child: new Stack(
                        alignment: Alignment.topRight,
                        children: <Widget>[
                          new Image.asset(
                            'images/mojule_all_icon_camera.png',
                            height: 50.0,
                            width: 80.0,
                          ),
                          new Image.asset(
                            'images/module_install_pic_icon_delete.png',
                            width: 28.0,
                            height: 28.0,
                          ),
                        ],
                      ));
                    },
                    childCount: 9,
                  ),
                ),

                //  分割线
                new SliverList(
                  delegate: new SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Container(
                        height: 20.0,
                        color: Colors.blue[50],
                      );
                    },
                    childCount: 1,
                  ),
                ),

                //  设备列表
                new SliverList(
                  delegate:
                      new SliverChildBuilderDelegate(makeItem, childCount: 5),
                ),

                //  按钮
                new SliverList(
                  delegate: new SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return new Container(
                        height: 45.0,
                        margin: const EdgeInsets.only(left: 90.0, right: 90.0, top: 20.0, bottom: 60.0),
                        child: new RaisedButton(
                          color: Colors.blue[400],
                          child: new Text('保存', style: new TextStyle(color: Colors.white),),
                          shape: ModuleBorder.buttonRoundBorder(),
                          onPressed: () {},
                        ),
                      );
                    },
                    childCount: 1,
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
