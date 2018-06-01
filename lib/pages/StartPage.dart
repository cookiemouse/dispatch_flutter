import 'package:flutter/material.dart';
import '../widgets/ModuleTitleBack.dart';
import '../resources/ModuleDecoration.dart';

class StartPage extends StatefulWidget {
  @override
  State createState() {
    return new _StartPageState();
  }
}

class _StartPageState extends State<StartPage> {
  Widget makeItem(BuildContext context, int index) {
    Widget item = new Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(5.0),
      decoration: ModuleDecoration.itemRoundRectDecorationGradientBlue(),
      child: new RichText(
        text: new TextSpan(children: <TextSpan>[
          new TextSpan(
            text: '车架号\nLBVNU39059SC30777\n\n派单数量 ',
          ),
          new TextSpan(
              text: '有线 ', style: new TextStyle(color: Colors.grey[400])),
          new TextSpan(
            text: '1',
          ),
          new TextSpan(
              text: ' 个，无线 ', style: new TextStyle(color: Colors.grey[400])),
          new TextSpan(
            text: '0',
          ),
          new TextSpan(text: ' 个\n\n'),
          new TextSpan(
            text: '完成数量 ',
          ),
          new TextSpan(
              text: '有线 ', style: new TextStyle(color: Colors.grey[400])),
          new TextSpan(
            text: '0',
          ),
          new TextSpan(
              text: ' 个，无线 ', style: new TextStyle(color: Colors.grey[400])),
          new TextSpan(
            text: '0',
          ),
          new TextSpan(text: ' 个'),
        ]),
      ),
    );

    Radius radius = new Radius.circular(30.0);
    Widget button = new Container(
        margin: const EdgeInsets.only(
            left: 80.0, right: 80.0, bottom: 100.0, top: 30.0),
        child: new SizedBox(
          height: 45.0,
          child: new RaisedButton(
              child: new Text(
                '提交订单',
                style: new TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.blue[400],
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.all(radius),
                side: new BorderSide(color: Colors.blue[300], width: 1.0),
              ),
              onPressed: () {}),
        ));

    //  返回两种布局
    return index < 4 ? item : button;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new ModuleTitleBack(
            title: '',
            color: Colors.blue,
          ),
          new Expanded(
            child: new ListView.builder(
                padding: new EdgeInsets.only(top: 0.0),
                itemCount: 5,
                itemBuilder: makeItem),
          ),
        ],
      ),
    );
  }
}
