import 'package:flutter/material.dart';

class SelfImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SelfImage')),
      body: Center(
        child: Container(
          width: 200,
          height: 300,
          decoration: BoxDecoration(color: Colors.red),
          /* 
          // url 插入图片
          child: Image(
            image: NetworkImage(
              'https://upload.jianshu.io/users/upload_avatars/12442310/e11b2581-d89e-406e-95bc-5e1421066549.jpg'
            ),
            fit: BoxFit.cover, // 全面铺展开，适应当前盒子，但是会有裁切
            // fit: BoxFit.fill, // 适应整个盒子，但是有拉伸
            // fit: BoxFit.fitWidth, // 宽度全展开
            // fit: BoxFit.fitHeight, // 高度全展开
          ) */
          child: Image(
            // 静态资源，导入本地图片   需要先在项目根目录新建目录images ，然后配置 pubspec.yaml -> assets 中配置好图片路径
            // 坑：pubspec.yaml -> assets 的缩进不要改，会有问题
            image: AssetImage('images/aaa.jpeg')
          ),
        )
          
      )
    );
  }
}
