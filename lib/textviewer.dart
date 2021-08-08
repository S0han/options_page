import 'package:flutter/material.dart';

class TextViewer extends StatelessWidget {
  String msg;

  TextViewer({Key? key, required this.msg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(msg),
        ),
      ),
    );
  }
}
