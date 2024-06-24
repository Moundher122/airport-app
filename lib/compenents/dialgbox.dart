// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ffi';

import 'package:flutter/material.dart';
class dialogbox extends StatelessWidget {
  
 dialogbox({super.key});
final namecontroller=TextEditingController();
  final cardcontreller=TextEditingController();
  SnackBar _createSnackBar(String name) {
    return SnackBar(content: Text('Payment Successful Mr $name'));
  }
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(255, 32, 36, 46),
content: Container(
  width: 250,
  height: 200,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
  child: Column(
    children: [
      TextField(
        controller: namecontroller,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          label: Text('Name'),
        ),
      ),
      SizedBox(height:10),
      TextField(
        controller: cardcontreller,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          label: Text('Your Card Number'),
        ),
      ),
      SizedBox(height: 10,),
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(_createSnackBar(namecontroller.text));
        },
        child: Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 247, 200, 70),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(child: Text('Pay',style: TextStyle(fontSize: 20),)),),
      )
    ],
  ),
),
    );
  }
}