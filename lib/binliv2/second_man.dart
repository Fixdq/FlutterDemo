import 'package:flutter/material.dart';

class SecondMain extends StatefulWidget {
  @override
  _SecondMainState createState() => _SecondMainState();
}

class _SecondMainState extends State<SecondMain>
    with SingleTickerProviderStateMixin {
  TabController controller;
  List<String> tab_title = [
    '标签',
    '标签',
    '标签',
    '标签',
    '标签',
    '标签',
    '标签',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: tab_title.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Container(
            color: Theme.of(context).primaryColor,
            child: TabBar(
              isScrollable: false,
              controller: controller,
              tabs: tab_title.map((item) {
                return Tab(
                  text: item,
                );
              }).toList(),
            ),
          ),TabBarView(
              controller: controller,
              children:
              tab_title.map((item){
                return Text(item);
              }).toList()
            ),
        ],
    );
  }
}
