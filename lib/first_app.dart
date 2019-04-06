import 'package:flutter/material.dart';
import 'package:hello/demo/basic_demo.dart';
import 'package:hello/demo/bottom_navigation_bar_demo.dart';
import 'package:hello/demo/draw_demo.dart';
import 'package:hello/demo/layout_demo.dart';
import 'package:hello/demo/listview_demo.dart';
import 'package:hello/demo/navigator_demo.dart';
import 'package:hello/demo/tabview_demo.dart';

main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
      ),
      title: 'title',
//      home: NavigatorDemo(),
      initialRoute: '/',
      routes: {
        '/':(context) => Home(),
        '/about':(context) => Page(title: 'About',)
      },
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: Container(
                child: Text(
              'appbar',
              textAlign: TextAlign.center,
            )),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'search button',
                onPressed: () => debugPrint('search button is press'),
              ),
            ],
            elevation: 0.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.local_florist),
                ),
                Tab(
                  icon: Icon(Icons.change_history),
                ),
                Tab(
                  icon: Icon(Icons.directions_bike),
                ),
                Tab(
                  icon: Icon(Icons.view_quilt),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
              BasicDemo(),
              LayoutDemo(),
              TabViewDemo(),
            ],
          ),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo()),
    );
  }
}
