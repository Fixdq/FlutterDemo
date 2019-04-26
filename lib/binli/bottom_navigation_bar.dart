import 'package:flutter/material.dart';

class BNB extends StatefulWidget {
  @override
  _BNBState createState() => _BNBState();
}

class _BNBState extends State<BNB> {
  int _index = 0;
  var _pageViewController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BNB'),
        centerTitle: true,
      ),
      body: PageView.builder(
        itemBuilder: _pageViewBuilder,
        onPageChanged: _pageViewChange,
        controller: _pageViewController,
        itemCount: 4,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: _bottomOnTap,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.work), title: Text('工作台')),
          BottomNavigationBarItem(icon: Icon(Icons.people), title: Text('顾客')),
          BottomNavigationBarItem(
              icon: Icon(Icons.desktop_mac), title: Text('发现')),
          BottomNavigationBarItem(icon: Icon(Icons.face), title: Text('我的')),
        ],
      ),
    );
  }

  // viewPage 构建方法
  Widget _pageViewBuilder(BuildContext context, int index) {
    String text = 'View';
    switch (index) {
      case 0:
        text += '1';
        break;
      case 1:
        text += '2';
        break;
      case 2:
        text += '3';
        break;
      case 3:
        text += '4';
        break;
    }
    return Text(text);
  }

  // viewpage 切换事件
  void _pageViewChange(int index) {
    setState(() {
      if (index != _index) {
        _index = index;
      }
    });
  }

  // bottomnavigationbar pageview 联动
  void _bottomOnTap(int index) {

    _pageViewController.animateToPage(index,
        duration: const Duration(milliseconds: 1000), curve: Curves.linearToEaseOut);
  }
}

class FPageView extends StatefulWidget {
  @override
  _FPageViewState createState() => _FPageViewState();
}

class _FPageViewState extends State<FPageView> {
  int _index = 0;
  var _pageViewController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: _pageViewBuilder,
      onPageChanged: _pageViewChange,
      controller: _pageViewController,
      itemCount: 4,
    );
  }

  Widget _pageViewBuilder(BuildContext context, int index) {
    String text = 'View';
    switch (index) {
      case 0:
        text += String.fromCharCode(index);
        break;
      case 1:
        text += String.fromCharCode(index);
        break;
      case 2:
        text += String.fromCharCode(index);
        break;
      case 3:
        text += String.fromCharCode(index);
        break;
    }
    return Text(text);
  }

  //
  void _pageViewChange(int index) {
    setState(() {
      if (index != _index) {
        _index = index;
      }
    });
  }
}

class BottomNavigationBarDemos extends StatefulWidget {
  @override
  _BottomNavigationBarDemoState createState() =>
      _BottomNavigationBarDemoState();
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemos> {
  ///
  ///  底部导航
  ///
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _bottomOnTap,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.work), title: Text('工作台')),
        BottomNavigationBarItem(icon: Icon(Icons.people), title: Text('顾客')),
        BottomNavigationBarItem(
            icon: Icon(Icons.desktop_mac), title: Text('发现')),
        BottomNavigationBarItem(icon: Icon(Icons.face), title: Text('我的')),
      ],
    );
  }

  //bottomnavigation & pageview 联动
  void _bottomOnTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
