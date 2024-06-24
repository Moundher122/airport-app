// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
class taile extends StatelessWidget {
  const taile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 60,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width:60,
              height:60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 57, 57, 57),
              ),
              child: Icon(Icons.person,color: Color.fromARGB(255, 203, 203, 203),),
            ),
            SizedBox(width: 20,),
            Expanded(
              child: Column(  
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name',style: TextStyle(
                    color: Color.fromARGB(255, 203, 203, 203),
                    fontSize: 18,
                  ),),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Message',style: TextStyle(
                        color: Color.fromARGB(255, 203, 203, 203).withOpacity(0.3),
                        fontSize: 14,
                      ),),
                      Text('Time',style: TextStyle(
                        color: Color.fromARGB(255, 203, 203, 203).withOpacity(0.3),
                        fontSize: 14,
                      ),),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      
      ),
    );
  }
}