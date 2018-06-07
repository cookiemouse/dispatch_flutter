import 'dart:async';

import 'package:flutter/material.dart';

class PopDialog {
  static Future<Null> showPop(BuildContext context, Widget child,
      {bool outDismissible = true}) async {
    return showDialog<Null>(
      context: context,
      barrierDismissible: outDismissible, // user must tap button!
      builder: (BuildContext context) {
        return child;
      },
    );
  }
}
