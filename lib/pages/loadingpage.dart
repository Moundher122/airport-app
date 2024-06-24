// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/MyHomePage.dart';
import 'package:uicons/uicons.dart';
class loadingpage extends StatefulWidget {
  const loadingpage({super.key});

  @override
  State<loadingpage> createState() => _loadingpageState();
}

class _loadingpageState extends State<loadingpage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 32, 36, 46),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height/2-20),
                Icon(UIcons.boldRounded.bus, color: Color.fromARGB(255, 203, 203, 203), size: 40,),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:10.0),
              child: Text('Airport app', style: TextStyle(color: Color.fromARGB(255, 203, 203, 203), fontSize: 24,)),
            ),
          ],
        ),
      ),
    );
  }
}