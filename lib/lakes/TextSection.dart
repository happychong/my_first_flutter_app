import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Text(
        '''Learn Flutter in this online class by the App Brewery. If you sign up by July 8, it's free.Do you design UIs for your Flutter apps? We're excited to announce that CodePen now supports Flutter.''',
        style: TextStyle(
          // 行高
          height: 1.3,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
