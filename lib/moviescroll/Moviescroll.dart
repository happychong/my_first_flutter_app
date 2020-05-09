import 'package:flutter/material.dart';

class Moviescroll extends StatelessWidget {
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
          child: ListView(
          // 横向排版需要添加
            scrollDirection: Axis.horizontal,        
            children: <Widget>[
              _ImgItem(url: imgList[0]),
              _ImgItem(url: imgList[1]),
              _ImgItem(url: imgList[2]),
              _ImgItem(url: imgList[3]),
              _ImgItem(url: imgList[4]),
              _ImgItem(url: imgList[5]),
              _ImgItem(url: imgList[6]),
            ],
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
    return Container(
      width: 135,
      child: Image(
        image: NetworkImage('$url'),
        fit: BoxFit.cover,
      ),
    );
  }
}