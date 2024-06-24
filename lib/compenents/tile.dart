// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
class tile extends StatelessWidget {
  final String vole;
  final String time;
 tile({super.key,required this.vole,required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right:20,top: 10),
      child: Container(
        height: 70,
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(vole,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 203, 203, 203),
              fontFamily: 'Barlow'
            ),),
            Text(time,style: TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 203, 203, 203),
            ),),
           Divider(color: Color.fromARGB(255, 203, 203, 203),thickness: 0.25,)
          ],
        )
        ,
      ),
    );
  }
}