// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
class storyitem extends StatelessWidget {
  int ?index;
   storyitem ({super.key,this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: Container(
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 57, 57, 57),
        ),
        
        child:index==0? Stack(
          children: [
            Center(child: Icon(Icons.photo),),
            Positioned( left: 3,top: 3,child: Container(child: Icon( Icons.add,color: Color.fromARGB(255, 203, 203, 203),),decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle),)),
            Positioned( bottom: 10,right: 10,child:Text('Add to your story',style: TextStyle(color: Color.fromARGB(255, 203, 203, 203),fontWeight: FontWeight.w500),) ),
          ],
        )
        :Center(child: Icon(Icons.photo),),
        
      ),
    );
  }
}