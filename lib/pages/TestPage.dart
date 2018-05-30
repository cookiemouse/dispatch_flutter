import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  static Radius radius = new Radius.circular(5.0);
  final ShapeDecoration shapeDecoration = new ShapeDecoration(
    color: Colors.white,
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.all(radius),
      side: new BorderSide(
          color: Colors.blue, width: 10.0, style: BorderStyle.solid),
    ) +
        new RoundedRectangleBorder(
            borderRadius: new BorderRadius.all(radius),
            side: new BorderSide(color: Colors.red, width: 1.0)) +
        new RoundedRectangleBorder(
            borderRadius: new BorderRadius.all(radius),
            side: new BorderSide(color: Colors.green, width: 10.0)),
  );

  InputBorder inputBorder = new OutlineInputBorder(
    borderRadius: new BorderRadius.circular(50.0),
    borderSide: new BorderSide(
        color: Colors.red,
        width: 10.0,
    ),
  );

  InputBorder inputBorder2 = new UnderlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: new BorderRadius.all(radius),
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: shapeDecoration,
      padding: new EdgeInsets.all(10.0),
      child: new Scaffold(
          body: new Center(
            child: new TextField(
              onChanged: (text){},
              autofocus: false,
              maxLines: 1,
              decoration: new InputDecoration(
                hintText: '请输入客户名称/订单号',
                contentPadding: new EdgeInsets.all(8.0),
                icon: new Icon(Icons.access_alarm),
//                labelText: '测试',
                helperText: '请输入后8位Imei号',
                prefixIcon: new Icon(Icons.accessibility),
                counterText: '10',
                filled: true,
                fillColor: Colors.yellow,
                isDense: true,
                suffixIcon: new Icon(Icons.add_a_photo),
//                suffixText: 'SuffixText',
                border: InputBorder.none,
              ),
            ),
          ),
      ),
    );
  }
}
