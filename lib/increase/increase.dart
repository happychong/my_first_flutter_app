import 'package:flutter/material.dart';

// 动态组件 StatefulWidget

class Increase extends StatefulWidget {
  // 传参，类的重写,我们使用这种方式传参是可以的，如果传递的参数是数字、字符串等可以接收到，但是如果参数是个类，就接收不到了，规范写法是下面的
  // Increase({this.title});
  // @required title 必传
  Increase({Key key, @required this.title}) : super(key: key);

  // 每一个动态组件都需要一个 createState 函数，意思就是生成状态
  @override
  // 控制器名字  要返回这个类的实例
  _IncreaseState createState() => _IncreaseState();
  final String title;
}

// 每一个动态组件都需要一个控制器，用来对组件内部的状态进行控制，并且渲染被控制的组件的UI结构
// 命名要求：_ + 被控制组件名 + State
// _(下划线)在变量当中使用要谨慎，在开始的位置表示私有变量，私有函数，不能被导出，下划线在单词中间不会报错，但是会提示不合法命名
// <Increase> - 被控制组件名
class _IncreaseState extends State<Increase> {
  // 控制器内部的build函数，用来渲染被控制组件UI结构

  // 页面当众的数字需要增加，我们就定义一个状态值
  int _counter = 0;

  // 数字自增函数
  void _increaseCounter() {
    // 数字自增完成后，需要setState函数调用，否则视图不会刷新
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // widget 代表被控制的组件
        title: Text('${widget.title}'),
      ),
      body: Center(
        // 从上到下 排列组件
        child: Column(
          // 排列方式
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('please press the button'),
            Text(
              '$_counter',
              style: TextStyle(fontSize: 30)
            )
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increaseCounter,
        // 提示信息
        tooltip: 'increase',
        child: Icon(Icons.add),
      ),
    );
  }
}

/* 
// 静态函数的传参
class Abc extends StatelessWidget {
  // 接收参数，类的无参变有参
  Abc({Key key, this.title}):super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('$title'),
    );
  }
}
 */
