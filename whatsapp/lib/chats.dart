import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              trailing:
              Text('12:30', style: TextStyle(color: Colors.white70)),
              leading: Container(
                height: 100,
                width: 50,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/img.png'),fit: BoxFit.cover)),
              ),

              title: Text(
                'User Name',
                style: TextStyle(color: Colors.white),
              ),

              subtitle: Text(
                'message',
                style: TextStyle(color: Colors.white70),
              ),
            ),
            Divider(
              height: 20,
            )
          ],
        );
      });
  }
}