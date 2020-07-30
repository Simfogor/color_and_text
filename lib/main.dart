import 'package:color_and_text/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color and Text',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: HomePage(),
    );
  }
}
