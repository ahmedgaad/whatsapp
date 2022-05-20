import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  const Contacts({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/img22.png'),
                      fit: BoxFit.cover)),
            ),

            
            SizedBox(height: 10,),
            Text(
              'No contacts added',
              style: TextStyle(fontSize: 25, color: Colors.white70),
            )
          ],
        ),
      ),
    );
  }
}