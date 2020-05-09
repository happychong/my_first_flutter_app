import 'package:flutter/material.dart';
// 引入详情页
import 'Detail.dart';

class Moviescroll2 extends StatelessWidget {
  final List imgList =[
    'https://p0.meituan.net/170.230/movie/07e0ee6c6f30700e6d4ab6774d95fc4f108727.jpg',
    'https://p0.meituan.net/170.230/movie/644b66958ccbeb8bac4955c52864c8881471793.jpg',
    'https://p0.meituan.net/170.230/movie/f52ccebd4f91402b6532f44a494713855261102.jpg',
    'https://p1.meituan.net/170.230/movie/a19913517ec4dd7b1e8c56a199ceaa4280560.jpg',
    'https://p0.meituan.net/170.230/movie/1907a5af889e44236fd80952980d36e13257090.jpg',
    'https://p0.meituan.net/170.230/moviemachine/1d2b4985d0187b437d41a73994ba2e191607376.jpg',
    'https://p1.meituan.net/170.230/movie/81fe2197ef930c79624a28cc76c423835264620.png'
  ];
  @override
  Widget build(BuildContext context) {
    // ListView 一个排列的组件盒子，可以纵向排版，也可以横向排版
    return Scaffold(
      body: Center(
        child: Container(
          height: 202,
          // ListView.builder 对数组遍历，再渲染的组件
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            // 传递一个回调函数，返回值是一个组件，一个是系统提供的上下文 BuildContext， 一个是index（索引）
            itemBuilder: (BuildContext context, int index){
              var _item = imgList[index];
              return _ImgItem(url: _item);
            },
            itemCount: imgList.length,
          )
        )
      )
    );
  }
}
// ListView 和 ListView.builder
// 不溢出，会出现滚动条

// Column 和 Row 会溢出

class _ImgItem extends StatelessWidget {
  _ImgItem({Key key, @required this.url }):super(key: key);
  final String url;
  @override
  Widget build(BuildContext context) {
    // 如果我们需要在我们的足尖上添加事件，那么我们就调用 GestureDetector 组件，它可以添加事件
    return GestureDetector(
      onTap: () {
        // 跳转到详情页路由
        // Navigator.of(context).push - 路由跳转方法 
        Navigator.of(context).push(
          // MaterialPageRoute - 路由组件
          MaterialPageRoute(
            // builder 传递一个函数，返回值是需要跳转到的组件
            builder: (BuildContext context) {
              return Detail(url: url);
            }
          )
        ).then((val) {
          // then 里 异步拿路由的参数，这里由Detail的pop传递来的
          print(val);
        });
        // print('$url');
      },
      child: Container(
        width: 135,
        child: Image(
          image: NetworkImage('$url'),
          fit: BoxFit.cover,
        ),
      )
    );
  }
}