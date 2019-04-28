import 'package:flutter/material.dart';

class ColumIconButtonDemo extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;

  ColumIconButtonDemo(this.icon, this.color, this.label);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: EdgeInsets.only(top: 3.0),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class ManagerMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(3.0)),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(3.0, 2.0, 0.0, 2.0),
            alignment: Alignment.topLeft,
            child: Text(
              "管理工具",
            ),
          ),
          Divider(
            height: 2.0,
            color: Colors.grey,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
    Expanded(child:ColumIconButtonDemo(Icons.call, color, '日计划')),
    Expanded(child:ColumIconButtonDemo(Icons.call, color, '日计划')),
    Expanded(child:ColumIconButtonDemo(Icons.call, color, '日计划')),
    Expanded(child:ColumIconButtonDemo(Icons.call, color, '日计划')),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
//                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ColumIconButtonDemo(Icons.call, color, '日计划'),
                      ColumIconButtonDemo(Icons.call, color, '日计划'),
                      ColumIconButtonDemo(Icons.call, color, '日计划'),
                      ColumIconButtonDemo(Icons.call, color, '日计划'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
