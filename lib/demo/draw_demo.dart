import 'package:flutter/material.dart';


class DrawerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'fixdq',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text('fixd.quan@gmail.com'),
            currentAccountPicture:CircleAvatar(
              backgroundImage: NetworkImage('http://images.liqucn.com/img/h22/h66/img_localize_69698d77fa69c289e3d8fc125a31fa3e_400x400.png'),
            ) ,
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image:DecorationImage(
                image: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1554289382101&di=8fb5d04b510a8e075fb67ac938952e6d&imgtype=0&src=http%3A%2F%2Ff.hiphotos.baidu.com%2Flvpics%2Fw%3D600%2Fsign%3Db7c305c7aad3fd1f3609a13a004f25ce%2Fdcc451da81cb39db83b5f1bfd2160924aa1830e5.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.yellow[500].withOpacity(0.3),
                  BlendMode.hardLight,
                ),
              ),
            ),
          ),
          ListTile(
            title: Text('msg',textAlign: TextAlign.right,),
            trailing: Icon(Icons.message,color: Colors.black12,size: 22.0,),
            onTap: ()=> Navigator.pop(context),
          ),
          ListTile(
            title: Text('fav',textAlign: TextAlign.right,),
            trailing: Icon(Icons.favorite,color: Colors.black12,size: 22.0,),
            onTap: ()=> Navigator.pop(context),
          ),
          ListTile(
            title: Text('phone',textAlign: TextAlign.right,),
            trailing: Icon(Icons.phone,color: Colors.black12,size: 22.0,),
            onTap: ()=> Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}