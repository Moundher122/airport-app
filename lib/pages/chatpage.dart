// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../compenents/taile.dart';
import 'callpage.dart';
import 'chatpag.dart';
import 'statuspage.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

bool isSwitched = false;
List <Widget> pages=[ChatPag(),CallPage(),StatusPage()];
List <String> names=['Chats','Calls','Status'];
int mindex=0;
class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    void changest(int index){
      setState(() {
        mindex=index;
      });
    }
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 32, 36, 46),
      
      bottomNavigationBar:BottomNavigationBar(
        
        currentIndex: mindex,
        onTap: (index) {
          changest(index);
        },
        backgroundColor: Color.fromARGB(255, 32, 36, 46),
        selectedItemColor: Color.fromARGB(255, 57, 57, 57),
        unselectedItemColor: Color.fromARGB(255, 203, 203, 203),
        items: [
          BottomNavigationBarItem(label: 'Chats',icon: Icon(Icons.chat_bubble_rounded)),
          BottomNavigationBarItem(label: 'Calls',icon: Icon(Icons.call_rounded)),
          BottomNavigationBarItem(label: 'Status',icon: Icon(Icons.circle_notifications_rounded)),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
          color: Color.fromARGB(255, 203, 203, 203),
        ),
        title: Text(
          names[mindex],
          style: TextStyle(
            fontSize: 24,
            color: Color.fromARGB(255, 203, 203, 203),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0, top: 8.0),
            child: Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color.fromARGB(57, 0, 0, 0),
              ),
              child: Icon(
                Icons.mode_edit_outline_rounded,
                color: Color.fromARGB(255, 203, 203, 203),
              ),
            ),
          )
        ],
      ),
      body:pages[mindex],
    );
  }
}
