import 'package:flutter/material.dart';
import 'package:project_monitoring/project_mon.dart';
import 'main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: project_mon(),
    );
  }
}
