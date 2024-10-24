import 'package:flutter/material.dart';
import 'package:flutter_week2/home.dart';
import 'package:flutter_week2/widgets/row_page.dart';
import 'package:flutter_week2/widgets/column_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: 'Flutter App',
      home: HomePage(),
    );
  }
}