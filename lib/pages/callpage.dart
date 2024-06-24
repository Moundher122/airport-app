// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../compenents/taile.dart';


class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Color.fromARGB(255, 32, 36, 46), // Added a Scaffold for better structure
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Update',
                    style: TextStyle(
                      color: Color.fromARGB(255, 203, 203, 203),
                      fontSize: 16,
                    ),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Color.fromARGB(255, 203, 203, 203),
                  ),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 10.0,right: 10.0),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return taile(); // Ensure the correct component name
                  },
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(left:20),
              child: Text('Yesterday', style: TextStyle(color: Color.fromARGB(255, 203, 203, 203), fontSize: 16, )),
            ),
            Padding(
                padding: EdgeInsets.only(left: 10.0,top: 10, right: 10.0),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return taile(); // Ensure the correct component name
                  },
                ),
              ),
            
          ],
        ),
      ),
    );
  }
}
