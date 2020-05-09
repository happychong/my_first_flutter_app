import 'package:flutter/material.dart';

class SelfContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SelfImage')),
      // body: Container(
      //   child: Text('abc')
      // )
      body: Container(
        width: 200,
        height: 300,
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(50),
        decoration: BoxDecoration(
          color: Colors.red
        ),
      ),
    );
  }
}
