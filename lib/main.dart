// 引入一个UI组件库
import 'package:flutter/material.dart';
import './widget/SelfText.dart';
import './widget/SelfImage.dart';
import './widget/SelfContainer.dart';
import './increase/increase.dart';

import './moviescroll/Moviescroll.dart';
import './moviescroll/Moviescroll2.dart';
import './moviescroll/Detail.dart';

import './lakes/Lakes.dart';

import './http/SelfHttp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app',
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      // home: SelfText(),
      // home: SelfImage(),
      // home: SelfContainer()

      // 计数器
      // home: Increase(title: 'increase demo'),

      // 静态页面
      // home: Lakes(),

      // 电影无缝滚动
      // home: Moviescroll2(),
      // home: Detail(),

      // 请求数据
      home: SelfHttp()
    );
  }
}