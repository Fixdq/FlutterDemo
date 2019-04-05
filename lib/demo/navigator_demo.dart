import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FlatButton(
                color: Colors.grey[400],
                onPressed: null,
                child: Text(
                  'Home',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.lightBlue),
                )),
            FlatButton(
                color: Colors.grey[400],
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },
                child: Text(
                  'About',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.lightBlue),
                )),
          ],
        ),
      ),
    );
  }
}

class Page extends StatelessWidget {
  final String title;

  Page({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          Navigator.pop(context);
        } ,
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
