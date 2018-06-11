import 'package:flutter/material.dart';

class ModuleDecoration {
  static itemRoundRectDecoration() {
    Radius radius = new Radius.circular(5.0);
    return new ShapeDecoration(
      color: Colors.white,
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.all(radius),
        side: new BorderSide(color: Colors.transparent, width: 10.0),
      ),
    );
  }

  static itemRoundRectShadowDecoration() {
    Radius radius = new Radius.circular(5.0);
    return new ShapeDecoration(
      color: Colors.white,
      shadows: <BoxShadow>[
        new BoxShadow(color: Colors.grey[400], blurRadius: 4.0, offset: new Offset(0.0, 2.0)),
      ],
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.all(radius),
        side: new BorderSide(color: Colors.transparent, width: 10.0),
      ),
    );
  }

  static itemRoundRectDecorationTop() {
    Radius radius = new Radius.circular(5.0);
    return new ShapeDecoration(
      color: Colors.white,
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.only(topLeft: radius, topRight: radius),
        side: new BorderSide(color: Colors.transparent, width: 10.0),
      ),
    );
  }

  static itemRoundRectDecorationGradientBlue() {
    Radius radius = new Radius.circular(5.0);
    return new ShapeDecoration(
      gradient: new LinearGradient(colors: <Color>[
        Colors.blue,
        Colors.lightBlueAccent[200],
      ]),
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.all(radius),
        side: new BorderSide(color: Colors.transparent, width: 10.0),
      ),
    );
  }

  static itemRoundRectDecorationGradientOrange() {
    Radius radius = new Radius.circular(5.0);
    return new ShapeDecoration(
      gradient: new LinearGradient(colors: <Color>[
        Colors.orange,
        Colors.orangeAccent[200],
      ]),
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.all(radius),
        side: new BorderSide(color: Colors.transparent, width: 10.0),
      ),
    );
  }

  static itemRoundRectDecorationGradientGreen() {
    Radius radius = new Radius.circular(5.0);
    return new ShapeDecoration(
      gradient: new LinearGradient(colors: <Color>[
        Colors.green,
        Colors.greenAccent[200],
      ]),
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.all(radius),
        side: new BorderSide(color: Colors.transparent, width: 10.0),
      ),
    );
  }

  static editRoundRectDecoration() {
    Radius radius = new Radius.circular(5.0);
    return new ShapeDecoration(
      color: Colors.white,
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.all(radius),
        side: new BorderSide(color: Colors.transparent, width: 1.0),
      ),
    );
  }

  static editRoundRectDecorationBlue() {
    Radius radius = new Radius.circular(5.0);
    return new ShapeDecoration(
      color: Colors.white,
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.all(radius),
        side: new BorderSide(color: Colors.blue, width: 1.0),
      ),
    );
  }

  static editRoundRectDecorationReason() {
    Radius radius = new Radius.circular(5.0);
    return new ShapeDecoration(
      color: Colors.white,
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.all(radius),
        side: new BorderSide(color: Colors.black, width: 1.0),
      ),
    );
  }

  static textRoundRectDecorationNormal() {
    Radius radius = new Radius.circular(15.0);
    return new ShapeDecoration(
      color: Colors.white,
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.all(radius),
        side: new BorderSide(color: Colors.grey, width: 1.0),
      ),
    );
  }

  static textRoundRectDecorationBlue() {
    Radius radius = new Radius.circular(15.0);
    return new ShapeDecoration(
      color: Colors.white,
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.all(radius),
        side: new BorderSide(color: Colors.blue, width: 1.0),
      ),
    );
  }

  static buttonRoundRectDecorationBlue() {
    Radius radius = new Radius.circular(15.0);
    return new ShapeDecoration(
      color: Colors.blue,
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.all(radius),
        side: new BorderSide(color: Colors.blue, width: 1.0),
      ),
    );
  }

  static backgroundDecoration() {
    return new BoxDecoration(
        image: new DecorationImage(
      fit: BoxFit.fill,
      image: new AssetImage('images/module_background.jpg'),
    ));
  }
}
