import 'package:flutter/material.dart';

class ModuleBorder {
  static buttonRoundBorder() {
    Radius radius = new Radius.circular(30.0);
    return new RoundedRectangleBorder(
      borderRadius: new BorderRadius.all(radius),
      side: new BorderSide(color: Colors.blue[400], width: 1.0),
    );
  }
}
