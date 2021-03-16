import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigasidanrute/pages/home_page.dart';
import 'package:flutter_navigasidanrute/pages/item_page.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      initialRoute: '/',
      routes :{
        '/':(context)=>HomePage(),
        '/item':(context)=>ItemPage(),
      },
    );
  }
}