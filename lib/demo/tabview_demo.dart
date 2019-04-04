import 'package:flutter/material.dart';
import 'package:hello/model/data.dart';

class TabViewDemo extends StatelessWidget {
  List<Widget> _buildTitles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[400],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          'Item-$index',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.red,
            fontSize: 20.0,
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      padding: EdgeInsets.all(16.0),
      children: _buildTitles(100),
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imgUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(
                    color: Colors.lightGreenAccent,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                posts[index].author,
                style: TextStyle(
                    fontWeight: FontWeight.w300, color: Colors.lightBlue[400]),
              )
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: posts.length,
        itemBuilder: _pageItemBuilder);
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      scrollDirection: Axis.vertical,
      onPageChanged: (s) => debugPrint('$s'),
      controller: PageController(
        initialPage: 2,
      ),
      children: <Widget>[
        Container(
          color: Colors.lightBlue,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'ONE',
            style: TextStyle(
              fontSize: 60.0,
              color: Colors.pinkAccent,
            ),
          ),
        ),
        Container(
          color: Colors.lightBlue,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'TWO',
            style: TextStyle(
              fontSize: 60.0,
              color: Colors.pinkAccent,
            ),
          ),
        ),
        Container(
          color: Colors.lightBlue,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'THR',
            style: TextStyle(
              fontSize: 60.0,
              color: Colors.pinkAccent,
            ),
          ),
        ),
      ],
    );
  }
}
