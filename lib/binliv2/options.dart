import 'package:flutter/material.dart';

class OptionsItem extends StatelessWidget {
  final IconData icon;
  final String label;

  OptionsItem(this.icon, this.label);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(3.0),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
              flex:2
              ,child: Icon(icon)),
          Expanded(
            flex: 5,
              child: Text(
            label,
            style: TextStyle(fontSize: 14.0, color: Colors.green),
          )),

          Expanded(
            flex: 1,
            child: Icon(Icons.arrow_right),
          )
        ],
      ),
    );
  }
}

class Options extends StatefulWidget {
  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: OptionsItem(Icons.desktop_mac, '操作实例'),
          ),
          Container(
            width: 10.0,
          ),
          Expanded(
            flex: 2,
            child: OptionsItem(Icons.desktop_mac, '操作实例'),
          ),
        ],
      ),
    );
  }
}
