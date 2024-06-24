// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../compenents/SectionHeader.dart';
import '../compenents/carrenttile.dart';
// Ensure this import path is correct

class CarPage extends StatefulWidget {
  const CarPage({super.key});

  @override
  State<CarPage> createState() => _CarPageState();
}
class CarInfo{
  String name;
  String price;
  String image;
  CarInfo({required this.name,required this.price,required this.image});
}
List<CarInfo> carlistsuv=[CarInfo(name: 'merc', price: '200', image: '')];
List<CarInfo> carlisthatchback=[CarInfo(name: 'audi', price: '100', image: '')];
List<CarInfo> carlistsedan=[CarInfo(name: 'audi', price: '100', image: '')];
List<CarInfo> carlistfav=[];

class _CarPageState extends State<CarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 32, 36, 46),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Color.fromARGB(255, 203, 203, 203),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        title: Text(
          'Car Rent',
          style: TextStyle(
            color: Color.fromARGB(255, 203, 203, 203),
            fontSize: 28,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              'Filter',
              style: TextStyle(
                color: Color.fromARGB(255, 203, 203, 203),
              ),
            ),
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async{
          setState(() {
          });
        
        },
        child: SingleChildScrollView(
          
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                // Hatchback Section
                SectionHeader(title: 'Hatchback'),
                SizedBox(height: 10),
                SizedBox(
                  height: 200, 
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: carlisthatchback.length,
                    itemBuilder: (context, index) {
                      return carrenttile(carname: carlisthatchback[index].name,price: carlisthatchback[index].price,image: carlisthatchback[index].image,); // Make sure CarRentTile is defined
                    },
                  ),
                ),
                SizedBox(height: 20),
                // Sedan Section
                SectionHeader(title: 'Sedan'),
                SizedBox(height: 10),
                SizedBox(
                  height: 200, 
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: carlistsedan.length,
                    itemBuilder: (context, index) {
                      return carrenttile(carname: carlistsedan[index].name,price: carlistsedan[index].price,image: carlistsedan[index].image,);
                    },
                  ),
                ),
                SizedBox(height: 20),
        
                // SUV Section
                SectionHeader(title: 'SUV'),
                SizedBox(height: 10),
                SizedBox(
                  height: 200, 
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: carlistsuv.length,
                    itemBuilder: (context, index) {
                      return carrenttile(carname: carlistsuv[index].name,price: carlistsuv[index].price,image: carlistsuv[index].image,);
                    },
                  ),
                ),
                SizedBox(height: 10),
                SectionHeader(title: 'Favourite'),
                SizedBox(
                  height: 200, 
                  child: carlistfav.isEmpty? 
                  Center(child: Text('No Favourites',style: TextStyle(color: Colors.white),))
                  :
                  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: carlistfav.length,
                    itemBuilder: (context, index) {
                      return carrenttile(carname: carlistfav[index].name,price: carlistfav[index].price,image: carlistfav[index].image,);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

