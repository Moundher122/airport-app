// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/carpage.dart';
import 'package:uicons/uicons.dart';

import '../compenents/dialgbox.dart';

class CarDetailPage extends StatefulWidget {
  final CarInfo carInfo;
  bool like = false;
   CarDetailPage({super.key,required this.carInfo,required this.like});

  @override
  State<CarDetailPage> createState() => _CarDetailPageState();
}
class _CarDetailPageState extends State<CarDetailPage> {
 
  @override
  Widget build(BuildContext context) {
    void addtofav(){
      setState(() {
        widget.like = !widget.like;
        if(widget.like){
          carlistfav.add(widget.carInfo);
        }else{      
            carlistfav.removeWhere((car) => car.name == widget.carInfo.name&&car.price == widget.carInfo.price&&car.image == widget.carInfo.image);
        }
      });
    }
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 32, 36, 46) ,
      body: ListView(
        padding: EdgeInsets.zero,
        physics:NeverScrollableScrollPhysics(),
        
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 250,
                color: Color.fromARGB(255, 32, 36, 46),
                child: Center(child: Icon(Icons.photo,size: 40,),),
              ),
              Positioned(
               left: 0,
               top:MediaQuery.of(context).size.height - 330,
               child :Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [             
                     Text(widget.carInfo.name,style: TextStyle(color: const Color.fromARGB(115, 248, 247, 247),fontSize: 24),
                     ),
                     Padding(padding: EdgeInsets.only(top: 10),child: Text('full name',style: TextStyle(color:const Color.fromARGB(115, 248, 247, 247) ),),),
                   ],
                 ),
                 
               ), ),
                
                Positioned(
                  right: 0,
                  top: MediaQuery.of(context).size.height - 300,
                  child: GestureDetector(
                  onTap:(){
                    addtofav();
                  },
                   child: Container(
                    width: 80,
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft
                        : Radius.circular(20),
                      ),
                      color: Color.fromARGB(255, 100, 100, 100).withOpacity(0.3),
                    ),
                    child: Center(child:!widget.like? Icon(Icons.favorite_border): Icon(Icons.favorite,color: Colors.red,),),
                   ),
                ),
                ),
               Positioned(
                top:10,
                left:10,
                child:GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Icon(UIcons.regularRounded.arrow_alt_left),
                  
                  ),
                ))
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
           decoration: BoxDecoration(
             color: Color.fromARGB(255, 65, 65, 65).withOpacity(0.3),
           ),
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 15),
             child: Column(
              children: [
               Padding(
                 padding: const EdgeInsets.only(bottom:10.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Information',style: TextStyle(color: Colors.white,fontSize: 20),),
                    Row(
                      children: [
                        Text('Rental terms',style: TextStyle(color: Colors.white,fontSize: 16),),
                        SizedBox(width: 5,),
                        Icon(UIcons.boldRounded.arrow_up_right,color: Color.fromARGB(255, 247, 200, 70),size: 10,),
                      ],
                    )
                  ],
                 ),
               ),
               SizedBox(
                height: 140,
                child: ListView(
                      scrollDirection: Axis.horizontal,
                     children: [
                      Padding(
                        padding: const EdgeInsets.only(right:10.0),
                        child: Container(
                          width: 110,
                         decoration: BoxDecoration(
                            color: Color.fromARGB(255, 100, 100, 100),
                            borderRadius: BorderRadius.circular(10),
                         ),
                         child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:10.0,left: 10),
                              child: Icon(Icons.settings_rounded,color: const Color.fromARGB(255, 0, 0, 0),size: 30,),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Padding(
                                  padding: const EdgeInsets.only(bottom:10.0,left: 10),
                                  child: Text('Gear box',style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontSize: 14),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom:10.0,left: 10),
                                  child: Text('automatic',style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontSize: 20),),
                                ),
                              ],
                            )
                          ],
                         ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:10.0),
                        child: Container(
                          width: 110,
                         decoration: BoxDecoration(
                            color: Color.fromARGB(255, 252, 87, 78),
                            borderRadius: BorderRadius.circular(10),
                         ),
                         child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:10.0,left: 10),
                              child: Icon(Icons.local_gas_station,color: const Color.fromARGB(255, 0, 0, 0),size: 30,),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Padding(
                                  padding: const EdgeInsets.only(bottom:10.0,left: 10),
                                  child: Text('Full usage',style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontSize: 14),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom:10.0,left: 10),
                                  child: Text('7.5 litter',style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontSize: 20),),
                                ),
                              ],
                            )
                          ],
                         ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:10.0),
                        child: Container(
                          width: 110,
                         decoration: BoxDecoration(
                            color: Color.fromARGB(255, 138, 233, 141),
                            borderRadius: BorderRadius.circular(10),
                         ),
                         child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:10.0,left: 10),
                              child: Icon(Icons.airline_seat_recline_normal_rounded,color: const Color.fromARGB(255, 0, 0, 0),size: 30,),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Padding(
                                  padding: const EdgeInsets.only(bottom:10.0,left: 10),
                                  child: Text('Full tranck range',style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontSize: 14),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom:10.0,left: 10),
                                  child: Text('800km',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 20),),
                                ),
                              ],
                            )
                          ],
                         ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:10.0),
                        child: Container(
                          width: 110,
                         decoration: BoxDecoration(
                            color: Color.fromARGB(255, 240, 240, 240),
                            borderRadius: BorderRadius.circular(10),
                         ),
                         child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:10.0,left: 10),
                              child: Icon(Icons.airline_seat_recline_normal_rounded,color: const Color.fromARGB(255, 0, 0, 0),size: 30,),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Padding(
                                  padding: const EdgeInsets.only(bottom:10.0,left: 10),
                                  child: Text('number of seats',style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontSize: 14),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom:10.0,left: 10),
                                  child: Text('4',style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontSize: 20),),
                                ),
                              ],
                            )
                          ],
                         ),
                        ),
                      ),
                     ],
                    ),
               ),
               SizedBox(height: 10,),
               GestureDetector(
                onTap: () {
                  showDialog(context: context, builder:(context) {
                    return dialogbox();
                  },);
                },
                 child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 247, 200, 70),),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('Book From \$${widget.carInfo.price}',style: TextStyle(color: Color.fromARGB(255, 37, 37, 37),fontSize: 16),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(UIcons.boldRounded.arrow_up_right,color: Color.fromARGB(255, 37, 37, 37),size: 16,),
                          )
                        ],
                      )
                  
                 ),
               )

                
                
              ],
             ),
           ),
          ),
        ],
      ),
      
    );
  }
}


