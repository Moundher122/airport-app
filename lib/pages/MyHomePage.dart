// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:uicons/uicons.dart';


import '../compenents/tile.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 32, 36, 46),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:20,top: 20),
            child: Text('Good Afternon !',
             style: TextStyle(
              fontFamily: 'Barlow',
              fontSize: 20, 
              color: Color.fromARGB(255, 203, 203, 203),
               ),
              ),
          ),
          Padding(
            
            padding: const EdgeInsets.symmetric(horizontal:20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Airport Map',
                style: TextStyle(
                  fontFamily: 'Chillax',   
                  fontSize: 32,
                  color: Color.fromARGB(255, 203, 203, 203),
                ),),
                Icon(UIcons.boldRounded.arrow_up_right,size: 20,color:Color.fromARGB(255, 247, 200, 70) ,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right:20,top: 10),
            child: Row(
              children: [
                Container(
                  width:MediaQuery.of(context).size.width/2+5,
                  height:75,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 247, 200, 70),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left:25,right: 10),
                       child: Icon(Icons.local_taxi_rounded,size: 30,),
                     ),
                   Text('Transfer',
                   style: TextStyle(
                    fontSize: 24,
                    fontFamily:'Barlow',
                    fontWeight: FontWeight.w600
                   ),)
                   ],
                  ),
                ),
                SizedBox(width: 15,),
                Expanded(
                  child: Container(
                    height:75,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 240, 240, 240),
                      borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.bed,color: Colors.black,size: 30,),
                ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right:20,top: 10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height:75,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 240, 240, 240),
                      borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.broken_image,color: Colors.black,size: 30,),
                ),
                ),
                SizedBox(width: 15,),
                Container(
                  width:MediaQuery.of(context).size.width/2+5,
                  height:75,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 252, 87, 78),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left:25,right: 10),
                       child: Icon(Icons.airplane_ticket_rounded,size: 30,),
                     ),
                   Text('Tickets',
                   style: TextStyle(
                    fontSize: 24,
                    fontFamily:'Barlow',
                    fontWeight: FontWeight.w600
                   ),)
                   ],
                  ),
                ),
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 20,right:20,top: 10),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/car');
                  },
                  child: Container(
                    width:MediaQuery.of(context).size.width/2+5,
                    height:75,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 138, 233, 141),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left:25,right: 10),
                         child: Icon(Icons.car_rental_rounded,size: 30,),
                       ),
                     Text('Car Rent',
                     style: TextStyle(
                      fontSize: 24,
                      fontFamily:'Chillax',
                      fontWeight: FontWeight.w600
                     ),)
                     ],
                    ),
                  ),
                ),
                 SizedBox(width: 15,),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/chat');
                    },
                    child: Container(
                      height:75,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 240, 240, 240),
                        borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.messenger_outline_rounded,color: Colors.black,size: 30,),
                                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right:20,top: 10),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Up coming ',
              style: TextStyle(
                fontSize: 18,
                
                color: Color.fromARGB(255, 203, 203, 203),
              ),),
              Row(
                children: [
                  Text('View all',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 203, 203, 203),
                  ),),
                  SizedBox(width:5),
                  Icon(UIcons.boldRounded.arrow_up_right,size: 13,color:Color.fromARGB(255, 247, 200, 70) ,),
                ],
              )
            ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder:(context, index) {
                return tile(vole: 'Alg - New York',time: '12 july 13:00am',);
              },))
        ],
      ),
    );
  }
}