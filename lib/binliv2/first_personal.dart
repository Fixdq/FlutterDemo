import 'package:flutter/material.dart';

class PersonData extends StatefulWidget {
  @override
  _PersonDataState createState() => _PersonDataState();
}

class _PersonDataState extends State<PersonData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor, borderRadius: BorderRadius.circular(10.0)),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Icon(Icons.arrow_left),
                Expanded(
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(child: Text('asdf'),),
                      Container(child: Text('asdf'),),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 60.0,
            width: 1.0,
            color: Colors.white,
          )
          ,
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('asdf'),
                      Text('asdf'),
                    ],
                  ),
                ),
                Icon(Icons.arrow_right),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
