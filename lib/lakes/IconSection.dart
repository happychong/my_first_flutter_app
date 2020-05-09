import 'package:flutter/material.dart';

class IconSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      // 主轴均匀排列
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _IconItem(icon: Icons.call, title: 'CALL'),
        _IconItem(icon: Icons.near_me, title: 'ROUTE'),
        _IconItem(icon: Icons.share, title: 'SHARE'),
      ],
    );
  }
}

class _IconItem extends StatelessWidget {

  _IconItem({Key key, @required this.icon, @required this.title}):super(key: key);
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 5),
          child: Icon(icon, color: Colors.blue)
        ),
        
        Text('$title', style: TextStyle(color: Colors.blue))
      ],
    );
  }
}
