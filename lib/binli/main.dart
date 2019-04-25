import 'package:flutter/material.dart';
import 'package:hello/binli/BottomNavigationBar.dart';
import 'package:hello/binli/flutter_swiper_demo.dart';
import 'package:hello/demo/bottom_navigation_bar_demo.dart';

class BinLi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Color.fromRGBO(230, 240, 250, 0.9),
        appBar: AppBar(
          elevation: 0.0,
          centerTitle:true ,
          title: Container(
            child: Text(
              "店铺名称",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.message),
              tooltip: 'Message',
            ),
          ],
        ),
        body:Container(
          height: 150.0,
          padding: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 3.0),
          child: MySwiper(),
        ),
        bottomNavigationBar: BinliBottomTabBar()
      ),
    );
  }
}
