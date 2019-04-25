import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MySwiper extends StatefulWidget {
  @override
  _MySwiperState createState() => _MySwiperState();
}

class _MySwiperState extends State<MySwiper> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: _swiperBuilder,
      itemCount: 3,
      itemWidth: 400.0,
      itemHeight: 150.0,
      viewportFraction: 0.8,
      scale: 0.9,
      layout: SwiperLayout.DEFAULT,
    );
  }

  Widget _swiperBuilder(BuildContext context, int index) {
    return FSwiperItemView();
  }
}

class FSwiperItemView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Text('本周计划'), Text('00.00')],
                ),
              ),
              Container(
                width: 1.0,
                height: 60.0,
                color: Colors.grey,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Text('本周计划'), Text('00.00')],
                ),
              ),
            ],
          ),
          Container(

            child:Text(
              '数据源于计划总结',
              textAlign:TextAlign.left,
            ),
          )
        ],
      ),
    );
  }
}
