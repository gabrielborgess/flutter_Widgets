import 'package:flutter/material.dart';
import 'package:study/src/pages/home_page.dart';
import 'package:study/src/pages/home_temp.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:HomePage(),
        ),
    );
  }
}
