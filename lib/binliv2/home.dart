import 'package:flutter/material.dart';
import 'package:hello/binliv2/first_view.dart';
import 'package:hello/binliv2/second_man.dart';

class AppPage extends StatefulWidget {
  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> with SingleTickerProviderStateMixin{

  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = new TabController(length: 4, vsync: this,initialIndex: 0);
    tabController.addListener((){
      if (tabController.indexIsChanging){
        _onTabChange();
      }
    });
  }
  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BottomTabView'),elevation: 0.0,),
      body: TabBarView(
          controller: tabController,
          children: [
            FirstView(),
            SecondMain(),
            Text('3'),
            Text('4'),
          ]
      ),
      bottomNavigationBar: Material(
        color: Colors.red,
        child: SafeArea(
            child: Container(
              height: 60.0,
              child: TabBar(
                controller: tabController,
                  indicatorColor: Theme.of(context).primaryColor,
                  indicatorWeight: 0.1,
                  labelColor:  Theme.of(context).primaryColor,
                  unselectedLabelColor: Color(0xFF8E8E8E),
                  tabs:[
                    Tab(text: '第一',icon: Icon(Icons.person),),
                    Tab(text: '第一',icon: Icon(Icons.person),),
                    Tab(text: '第一',icon: Icon(Icons.person),),
                    Tab(text: '第一',icon: Icon(Icons.person),),
              ]),
            )
        ),
      ),
    );
  }

  void _onTabChange() {
    if (this.mounted){
      this.setState((){
        print('change');
      });
    }
  }
}
