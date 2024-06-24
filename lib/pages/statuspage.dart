// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../compenents/storyitem.dart';


class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {
        return Future.delayed(Duration(seconds: 1));
      },
      child: GridView.builder(
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 100/150),
        itemCount: 7,
        shrinkWrap: true,
         itemBuilder:(context, index) {
           return storyitem(
            index:index,
           );
         },),
    );
  }
}