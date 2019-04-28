import 'package:flutter/material.dart';
import 'package:hello/binliv2/first_manager.dart';
import 'package:hello/binliv2/first_personal.dart';
import 'package:hello/binliv2/first_swiper.dart';
import 'package:hello/binliv2/options.dart';

class FirstView extends StatefulWidget {
  @override
  _FirstViewState createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                color: Theme.of(context).primaryColor,
                height: 150.0,
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                child: MySwiper(),
              ),
              Container(
                height: 100.0,
                color: Color.fromRGBO(230, 240, 250, 0.9),
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child: PersonData(),
              ),
              Container(
                height: 150.0,
                color: Color.fromRGBO(230, 240, 250, 0.9),
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child: ManagerMain(),
              ),
              Container(
                height: 80.0,
                color: Color.fromRGBO(230, 240, 250, 0.9),
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child: Options(),
              ),
            ])
          )
        ],
      )
    );
  }
}
