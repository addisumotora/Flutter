import 'package:flutter/material.dart';
import 'package:fooderlich/home.dart';
import 'fooderlich_theme.dart';
import './gridview/gridview.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return MaterialApp(
      theme: theme,
      title: 'fooderlich',
      home: Grid()
        
    );
  }
}