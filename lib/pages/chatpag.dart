import 'package:flutter/material.dart';

import '../compenents/taile.dart';
class ChatPag extends StatefulWidget {
  const ChatPag({super.key});

  @override
  State<ChatPag> createState() => _ChatPagState();
}

class _ChatPagState extends State<ChatPag> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 32, 36, 46),
      extendBody: true,
      body: RefreshIndicator(
          onRefresh: () async{
            await Future.delayed(Duration(seconds: 1));
          },
          child: SingleChildScrollView( 
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 57, 57, 57),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 203, 203, 203).withOpacity(0.3),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 203, 203, 203).withOpacity(0.3),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 60,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Stack(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 57, 57, 57),
                                ),
                                child: Icon(
                                  Icons.person,
                                  color: Color.fromARGB(255, 203, 203, 203),
                                ),
                              ),
                              if (index == 0)
                                Positioned(
                                  right: 0,
                                  bottom: 0,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromARGB(255, 203, 203, 203),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 37,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isSwitched = false;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: !isSwitched
                                    ? Color.fromARGB(255, 57, 57, 57)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  'All',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: isSwitched
                                        ? Color.fromARGB(255, 70, 70, 70)
                                        : Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          flex: 1,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isSwitched = true;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: isSwitched
                                    ? Color.fromARGB(255, 57, 57, 57)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  'Channel',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: !isSwitched
                                        ? Color.fromARGB(255, 70, 70, 70)
                                        : Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  ListView.builder(
                    shrinkWrap: true, 
                    physics: NeverScrollableScrollPhysics(), 
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return taile(); // Make sure to use the correct component name
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}