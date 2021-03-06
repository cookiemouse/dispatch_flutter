import 'package:flutter/material.dart';
import 'package:flutterdispatch/utils/RegU.dart';
import '../dialog/MessageDialog.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../resources/ModuleBorder.dart';

class LoginPage extends StatefulWidget {
  @override
  State createState() {
    return new _LoginPageState();
  }
}

class _LoginPageState extends State {
  bool mRememberChecked = true;

  static String mAccount = '';
  static String mPassword = '';

  Image getCheckImage() {
    return new Image.asset(
      mRememberChecked
          ? 'images/module_login_check_remenber_true.png'
          : 'images/module_login_check_remenber_false.png',
      width: 24.0,
      height: 24.0,
    );
  }

  TextField fieldAccount = new TextField(
    autocorrect: true,
    maxLines: 1,
    decoration:
        new InputDecoration(hintText: '请输入账号', border: InputBorder.none),
    obscureText: false,
    controller: new TextEditingController(text: '填写默认值'),
    onChanged: (str) {
      print('onChanged.mAccount-1->$str');
      mAccount = str;
      print('onChanged.mAccount-2->$mAccount\n');
    },
    onSubmitted: (str) {
      print('onSubmitted.mAccount-->$str');
    },
  );

  TextField fieldPassword = new TextField(
    autocorrect: true,
    maxLines: 1,
    decoration: new InputDecoration(
      hintText: '请输入密码',
      border: InputBorder.none,
    ),
    obscureText: true,
    controller: new TextEditingController(text: '123456'),
  );

  @override
  Widget build(BuildContext context) {
    Widget page = Column(
      children: <Widget>[
        new Container(
          child: new Image.asset(
            'images/module_login_icon_logo.png',
            width: 120.0,
            height: 120.0,
          ),
          margin: new EdgeInsets.fromLTRB(0.0, 60.0, 0.0, 40.0),
        ), //logo
        new Container(
          child: new Row(
            children: <Widget>[
              new Image.asset(
                'images/module_login_icon_account.png',
                width: 24.0,
                height: 24.0,
              ),
              new Expanded(flex: 1, child: fieldAccount),
            ],
          ),
          margin: new EdgeInsets.fromLTRB(20.0, 0.0, 10.0, 0.0),
        ), //输入账号框
        new Container(
          color: Colors.blue,
          height: 0.5,
          margin: new EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
        ),
        new Container(
          child: new Row(
            children: <Widget>[
              new Image.asset(
                'images/module_login_icon_password.png',
                width: 24.0,
                height: 24.0,
              ),
              new Expanded(
                flex: 1,
                child: fieldPassword,
              ),
            ],
          ),
          margin: new EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 0.0),
        ), //输入密码框
        new Container(
          color: Colors.blue,
          height: 0.5,
          margin: new EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
        ),
        new Container(
          child: new Row(
            children: <Widget>[
              new GestureDetector(
                child: getCheckImage(),
                onTap: () {
                  setState(() {
                    mRememberChecked = !mRememberChecked;
                  });
                },
              ),
              new GestureDetector(
                child: new Text(
                  '记住密码',
                  style: new TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  setState(() {
                    mRememberChecked = !mRememberChecked;
                  });
                },
              ),
            ],
          ),
          margin: new EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
        ), //记住密码
        new Container(
          width: 320.0,
          height: 45.0,
          child: new RaisedButton(
            child: new Text('登录'),
            color: Colors.blue,
            textColor: Colors.white,
            shape: ModuleBorder.buttonRoundBorder(),
            onPressed: () {
              mAccount = fieldAccount.controller.text;
              mPassword = fieldPassword.controller.text;
              if (RegU.isEmpty(mAccount)) {
                showTip('帐号不能为空');
                return;
              }
              if (RegU.isEmpty(mPassword)) {
                showTip('密码不能为空');
                return;
              }
              Navigator.pushNamed(context, '/managerhome');
            },
          ),
          margin: const EdgeInsets.only(top: 100.0, bottom: 50.0),
        ), //登录按钮
        new Text('汽车金融数据经济构筑者'),
      ],
    );
    //  显示SnackBar
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Center(
        child: new SingleChildScrollView(
          child: page,
        ),
      ),
    );
  }

  //  显示对话框
  void showDialog(String msg) {
    MessageDialog.showMessage(
      context,
      msg,
      children: <FlatButton>[
        new FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: new Text('确认'),
        ),
      ],
      outDismissible: true,
    );
  }

  //  显示Tooltip
  void showTip(String msg) {
    Fluttertoast.showToast(
        msg: msg, gravity: ToastGravity.BOTTOM, timeInSecForIos: 1);
  }
}
