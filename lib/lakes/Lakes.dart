import 'package:flutter/material.dart';
// 引入3个组件
import 'IconSection.dart';
import 'TextSection.dart';
import 'TitleSection.dart';

class Lakes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image(
            image: AssetImage('images/aaa.jpeg')
          ),
          TitleSection(),
          IconSection(),
          TextSection()
        ],
      )
    );
  }
}
// Column 纵向排版
// Row 横向排版
// 传递参数，都有children属性，[]类型，里面的每一项都是一个widget组件，