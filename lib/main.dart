// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'pages/MyHomePage.dart';
import 'pages/cardetailpage.dart';
import 'pages/carpage.dart';
import 'pages/chatpage.dart';
import 'pages/loadingpage.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: loadingpage(),
      routes: {
        '/car':(context)=>CarPage(),
        '/chat':(context) => ChatPage(),
      }
    );
  }
}