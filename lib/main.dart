import 'package:flutter/material.dart';
import 'pages/LoginPage.dart';
import 'pages/TestPage.dart';
import 'pages/ManagerHomePage.dart';
import 'pages/WorkerHomePage.dart';
import 'pages/ModifyPasswordPage.dart';

ManagerHomePage _mManagerHomePage = new ManagerHomePage(page: 0,);
WorkerHomePage _mWorkerHomePage = new WorkerHomePage(page: 0,);
ModifyPasswordPage _mModifyPasswordPage = new ModifyPasswordPage();

void main() => runApp(new MaterialApp(
      title: '派工',
      initialRoute: '/',
      routes: {
        '/': (context) => new LoginPage(),
        '/managerhome': (context) => _mManagerHomePage,
        '/workerhome': (context) => _mWorkerHomePage,
        '/modifypassword': (context) => _mModifyPasswordPage,
        '/test': (context) => new TestPage(),
      },
    ));
