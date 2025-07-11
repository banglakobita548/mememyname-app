import 'package:flutter/material.dart';

void main() => runApp(MemeMyNameApp());

class MemeMyNameApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MemeMyName',
      home: Scaffold(
        appBar: AppBar(title: Text('MemeMyName')),
        body: Center(child: Text('Welcome to MemeMyName!')),
      ),
    );
  }
}