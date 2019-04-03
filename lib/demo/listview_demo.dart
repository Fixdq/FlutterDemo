import 'package:flutter/material.dart';
import 'package:hello/model/data.dart';

class ListViewDemo extends StatelessWidget{
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Image.network(posts[index].imgUrl),
            SizedBox(
              height: 8.0,
            ),
            Text(
              posts[index].title,
              style: Theme.of(context).textTheme.title,
            ),
            Text(
              posts[index].author,
              style: Theme.of(context).textTheme.subtitle,
            ),
            SizedBox(
              height: 8.0,
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemBuilder: _listItemBuilder,
      itemCount: posts.length,
    );
  }
}