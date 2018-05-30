import 'package:flutter/material.dart';
import '../data/TabImageData.dart';
import '../pages/TestPage.dart';
import '../pages/OrderPage.dart';
import '../pages/HandingPage.dart';
import '../pages/CompletePage.dart';
import '../pages/MinePage.dart';

int mCurrentPage = 0;

class WorkerHomePage extends StatefulWidget {
  final int page = 0;

  WorkerHomePage({page}) {
    mCurrentPage = page;
  }

  @override
  State createState() {
    return new _WorkerHomePageState();
  }
}

class _WorkerHomePageState extends State {
  List<TabImageData> tabImages = new List<TabImageData>();

  Image getTabImage(int position) {
    if (mCurrentPage == position) {
      return tabImages[position].imageSelected;
    }
    return tabImages[position].imageNormal;
  }

  IndexedStack _body;
  OrderPage _mOrderPage;
  HandingPage _mHandingPage;
  CompletePage _mCompletePage;
  MinePage _mMinePage;

  TestPage _mTestPage;

  @override
  void initState() {
    tabImages.add(new TabImageData.init(
        'images/module_home_page_pending_false.png',
        'images/module_home_page_pending_true.png'));
    tabImages.add(new TabImageData.init(
        'images/module_home_page_doing_false.png',
        'images/module_home_page_doing_true.png'));
    tabImages.add(new TabImageData.init(
        'images/module_home_page_pended_false.png',
        'images/module_home_page_pended_true.png'));
    tabImages.add(new TabImageData.init(
        'images/module_home_page_mine_false.png',
        'images/module_home_page_mine_true.png'));

    _mOrderPage = new OrderPage();
    _mHandingPage = new HandingPage();
    _mCompletePage = new CompletePage();
    _mMinePage = new MinePage();

    _mTestPage = new TestPage();
  }

  @override
  Widget build(BuildContext context) {
    _body = new IndexedStack(
      index: mCurrentPage,
      children: <Widget>[
        // todo 添加page
        _mOrderPage,
        _mHandingPage,
        _mCompletePage,
        _mMinePage,
      ],
    );

    return new Scaffold(
      backgroundColor: Colors.white,
      body: _body,
      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: mCurrentPage,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.blue,
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
            icon: getTabImage(0),
            title: new Text(
              '订单任务',
            ),
            backgroundColor: Colors.white,
          ),
          new BottomNavigationBarItem(
            icon: getTabImage(1),
            title: new Text(
              '进行中',
            ),
          ),
          new BottomNavigationBarItem(
            icon: getTabImage(2),
            title: new Text(
              '完成订单',
            ),
          ),
          new BottomNavigationBarItem(
            icon: getTabImage(3),
            title: new Text(
              '我的',
            ),
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
