import 'package:flutter/material.dart';

class SelfText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SelfText')),
      body: Center(
        child: Text(
          'I am Text I am Text2 I am Text3 I am Text 4 I am Text5 I am Text6 I am Text7!',
          style: TextStyle(
            fontSize: 20, // 字体大小
            color: Colors.red, // 字体颜色
            letterSpacing: 2, // 文本距离变大
            fontWeight: FontWeight.w600, // 文本加粗
          ),
          overflow: TextOverflow.ellipsis, // 溢出 ...
          maxLines: 2,
        ),
      ),
    );
  }
}
