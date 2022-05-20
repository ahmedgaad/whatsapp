import 'package:flutter/material.dart';
import 'package:whatsapp/chats.dart';
import 'contacts.dart';
import 'calls.dart';
import 'status.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _Home_PageState();
}

class _Home_PageState extends State<HomePage> {
  int currentIndex = 0;
  List<Widget> screen = [
    Chats(),
    Contacts(),
    Calls(),
    Status(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(179, 27, 27, 27),
        title: Text('Whatsapp'),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 7,
          ),
          Icon(Icons.more_vert),
          SizedBox(
            width: 7,
          )
        ], 
      ),
      body: screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(179, 27, 27, 27),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,


        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },



        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'chats',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'contacts',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'calls',
          ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.add_link),
            label: 'status',
          ),
        ],
      ),
    );
  }
}
