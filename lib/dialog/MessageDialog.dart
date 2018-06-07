import 'dart:async';

import 'package:flutter/material.dart';

class MessageDialog{
  static Future<Null> showMessage(BuildContext context, String msg, {List<FlatButton> children, bool outDismissible = true}) async {
    if (null == msg){
      msg = '';
    }
    return showDialog<Null>(
      context: context,
      barrierDismissible: outDismissible, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          content: new SingleChildScrollView(
            child: new Text(msg),
          ),
          actions: children,
        );
      },
    );
  }
}