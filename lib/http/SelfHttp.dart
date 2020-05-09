import 'package:flutter/material.dart';
// 引入dio
import 'package:dio/dio.dart';
// 数据解析
import 'dart:convert';

class SelfHttp extends StatefulWidget {
  @override
  _SelfHttpState createState() => _SelfHttpState();
}

class _SelfHttpState extends State<SelfHttp> {
  List _list = [];

  @override
  void initState() {
    // getMovieList();
    getMovieList2();
    super.initState();
  }

  // void getMovieList(){
  //   try {
  //     Dio dio = Dio();
  //     dio.get('https://m.maoyan.com/ajax/comingList?ci=1&token=&limit=10&optimus_uuid=ABD935108F3C11EA97A8EDD15B2B01D03F63A8B78C9A4E5889A7AFC4517244CF').then((val) {
  //       print(val);
  //     });
  //   } catch (err) {
  //     print('$err');
  //   }
  // }

  void getMovieList2() async {
    try {
      Dio dio = Dio();
      Response response = await dio.get('https://haokan.baidu.com/videoui/api/videorec?tab=yinyue&act=pcFeed&pd=pc&num=20&shuaxin_id=1588753929916');
      print('--------------------------');
      Map responseData = jsonDecode(response.toString());
      setState(() {
        _list = responseData["data"]["response"]["videos"];
        print('${responseData["data"]["response"]["videos"]}');
      });
    } catch (e) {
      print('$e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: _list.length,
        itemBuilder: (BuildContext context, int i) {
          Map _item = _list[i];
          return Text('${_item["source_name"]}', style: TextStyle(fontSize: 30));
        }
      )
    );
  }
}