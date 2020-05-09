import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 15),
      child: Row(
        children: <Widget>[
          // 弹性布局组件
          Expanded(
            child: Column(
              // 主轴（上下） 和 副轴（左右）
              crossAxisAlignment: CrossAxisAlignment.start, // 副轴上调整位置
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    '标题标题标题标题标题标题标',
                    style: TextStyle(fontWeight: FontWeight.w700)
                  )
                ),
                Text(
                  '小小小小小小小',
                  style: TextStyle(color: Colors.grey)
                ),
              ],
            )
          ),
          // 左

          // 中
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          // 右
          Text('41')
        ],
      )
    );
  }
}
