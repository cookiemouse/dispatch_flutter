import 'package:flutter/material.dart';
import '../data/TabImageData.dart';
import 'package:flutter/cupertino.dart';
import 'MinePage.dart';
import 'PendingPage.dart';
import 'PendedPage.dart';

int mCurrentPage = 0;

class ManagerHomePage extends StatefulWidget {
  final int page = 0;

  ManagerHomePage({page}) {
    mCurrentPage = page;
  }

  @override
  State createState() {
    return new _HomePageState();
  }
}

class _HomePageState extends State {
  List<TabImageData> tabImages = new List<TabImageData>();

  Image getTabImage(int position) {
    if (mCurrentPage == position) {
      return tabImages[position].imageSelected;
    }
    return tabImages[position].imageNormal;
  }

  IndexedStack _body;
  PendingPage _mPendingPage;
  PendedPage _mPendedPage;
  MinePage _mManagerMinePage;

  @override
  void initState() {
    tabImages.add(new TabImageData.init(
        'images/module_home_page_pending_false.png',
        'images/module_home_page_pending_true.png'));
    tabImages.add(new TabImageData.init(
        'images/module_home_page_pended_false.png',
        'images/module_home_page_pended_true.png'));
    tabImages.add(new TabImageData.init(
        'images/module_home_page_mine_false.png',
        'images/module_home_page_mine_true.png'));

    _mPendingPage = new PendingPage();
    _mPendedPage = new PendedPage();
    _mManagerMinePage = new MinePage();
  }

  @override
  Widget build(BuildContext context) {
    _body = new IndexedStack(
      index: mCurrentPage,
      children: <Widget>[
        // todo 添加page
        _mPendingPage,
        _mPendedPage,
        _mManagerMinePage,
      ],
    );

    return new Scaffold(
      backgroundColor: Colors.white,
      body: _body,
      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: mCurrentPage,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
            icon: getTabImage(0),
            title: new Text('待处理'),
            backgroundColor: Colors.white,
          ),
          new BottomNavigationBarItem(
            icon: getTabImage(1),
            title: new Text('已处理'),
            backgroundColor: Colors.white,
          ),
          new BottomNavigationBarItem(
            icon: getTabImage(2),
            title: new Text('我的'),
            backgroundColor: Colors.white,
          ),
        ],
        onTap: (current) {
          setState(() {
            mCurrentPage = current;
          });
        },
      ),
    );
  }
}
