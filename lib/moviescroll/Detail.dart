import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  Detail({Key key, @required this.url}) : super(key: key);
  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('我的初恋18岁'),),
      body: Center(
        // child: 
        child: Column(
          children: <Widget>[
            Image(
              image: NetworkImage(url),
            ),
            GestureDetector(
              onTap: () {
                // pop - 跳转回上级的页面
                Navigator.of(context).pop('49亿');
              },
              child: Text('票房49亿', style: TextStyle(fontSize: 20))
            )
            
          ],
        ),
      )
    );
  }
}