// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../pages/cardetailpage.dart';
import '../pages/carpage.dart';
class carrenttile extends StatelessWidget {
  final String carname;
  final String price;
  final String image;
   carrenttile({super.key,required this.carname,required this.price,required this.image});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>CarDetailPage(carInfo: CarInfo(name: carname, price: price, image: image),
        like:carlistfav.any((car) =>
                      car.name == carname&&
                      car.price == price &&
                      car.image == image) ,)));
      },
      child: Padding(
        padding:EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Container(
          width: MediaQuery.of(context).size.width/2+20,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 19, 21, 25),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50,),
                Icon(Icons.photo,),
                SizedBox(height: 10,),
                Text(carname, style: TextStyle(color: Color.fromARGB(255, 203, 203, 203), fontSize: 20),),
                SizedBox(height: 10,),
                Text(price, style: TextStyle(color: Color.fromARGB(255, 203, 203, 203), fontSize: 16),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}