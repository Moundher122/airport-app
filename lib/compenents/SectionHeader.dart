// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
class SectionHeader extends StatelessWidget {
  final String title;
  const SectionHeader({required this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color.fromARGB(255, 203, 203, 203),
              fontSize: 20,
            ),
          ),
          Row(
            children: [
              Text(
                'See All',
                style: TextStyle(
                  color: Color.fromARGB(255, 203, 203, 203),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: Color.fromARGB(255, 247, 200, 70),
                size: 15,
              ),
            ],
          ),
        ],
      ),
    );
  }
}


