import 'package:flutter/material.dart';

class BinliBottomTabBar extends StatefulWidget {
  @override
  _BinliBottomTabBarState createState() => _BinliBottomTabBarState();
}

class _BinliBottomTabBarState extends State<BinliBottomTabBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTapChange,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.work),title: Text('工作台')),
        BottomNavigationBarItem(icon: Icon(Icons.people),title: Text('顾客')),
        BottomNavigationBarItem(icon: Icon(Icons.desktop_mac),title: Text('发现')),
        BottomNavigationBarItem(icon: Icon(Icons.face),title: Text('我的')),
      ],
    );
  }

  void _onTapChange(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
