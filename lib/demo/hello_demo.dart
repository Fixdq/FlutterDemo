import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'asdfa',
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 25.0, color: Colors.blue, fontWeight: FontWeight.bold),
      ),
    );
  }
}