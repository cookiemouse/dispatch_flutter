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

  static textRoundRectDecorationMore() {
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

  static backgroundDecoration() {
    return new BoxDecoration(
        image: new DecorationImage(
      fit: BoxFit.fill,
      image: new AssetImage('images/module_background.jpg'),
    ));
  }
}
