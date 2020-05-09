// 引入一个UI组件库
import 'package:flutter/material.dart';
// main 函数是入口函数   runApp 是系统提供的方法，就是执行渲染
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // override 意思就是覆盖   Widget 是组件类型，规定我们build函数的返回值类型 ，必须是一个组件
  // 每一个静态组件都需要一个build函数，用来做组件的渲染
  @override
  Widget build(BuildContext context) {
    // 每个项目最外成必须被MaterialApp包裹，里面有一些UI组件，包含了移动端页面渲染的一些相关规范
    return MaterialApp(
      // title 每个页面都有一个title，不显示在页面上
      title: 'Flutter Demo',
      // theme 设置当前项目的默认颜色
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar 头部导航组件
      appBar: AppBar(
        // title: Text(widget.title + ' 000'),
        title: Text('new Title')
      ),
      body: Center(
        child: Text('hello world')
      )
    );
  }
}