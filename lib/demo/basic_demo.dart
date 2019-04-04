import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.grey[300],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
//            color: Color.fromRGBO(2, 54, 35, 1.0),
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Colors.lightBlueAccent,
              border: Border.all(
                  color: Colors.pink,
                  width: 3.0,
                  style: BorderStyle.solid,
              )
            ),
            child: Icon(
              Icons.favorite,
              color: Colors.lightGreenAccent,
              size: 50.0,
            ),

          ),
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
        text: 'fixdq',
        style: TextStyle(
            color: Colors.blue,
            fontSize: 16.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: '.com',
            style: TextStyle(
              color: Colors.green,
              fontSize: 12.0,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );
  final String _author = '屈原';
  final String _title = '离骚';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      "($_title--$_author)浏览器：这个应该是 Dart 一开始造轮子的初衷，结局嘛，大家也都是知道，还是 JS 一统江湖。所以我只是建议大家在前端用用看，毕竟 Angular 也有官方的团队在支持 Dart 的版本，而且用 JS 写简单的应用还好，复杂的场景下那个代码真的是。。。。这个时候用 Dart 一定会给你一个完全不一样的体验。当然，可能开发效率上Dart会逊色一些，但维护成本上 Dart 绝对碾压 JS。（这里用“碾压”是一种夸张的手法，望知.）作者：爱码士平头哥链接：https://www.jianshu.com/p/d41952e51120来源：简书简书著作权归作者所有，任何形式的转载都请联系作者获得授权并注明出处。",
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
