import 'package:flutter/material.dart';
import 'pages/LoginPage.dart';
import 'pages/TestPage.dart';
import 'pages/ManagerHomePage.dart';
import 'pages/WorkerHomePage.dart';
import 'pages/ModifyPasswordPage.dart';
import 'pages/StartPage.dart';
import 'pages/ChoiceWorkerPage.dart';

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
        '/start': (context) => new StartPage(),
        '/choiceworker': (context) => new ChoiceWorkerPage(),
        '/test': (context) => new TestPage(),
      },
    ));
