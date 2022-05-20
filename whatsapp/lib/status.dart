import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            trailing: Icon(
              Icons.more_horiz,
              color: Colors.white,
            ),
            leading: Container(
              height: 100,
              width: 50,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/img2.jpg'),
                      fit: BoxFit.cover)),
            ),
            title: Text(
              'your story',
              style: TextStyle(color: Colors.white70),
            ),
            subtitle: Text(
              'today 12 :30 ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Recent update',
              style: TextStyle(color: Colors.white70),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        title: Text(
                          'User Name',
                          style: TextStyle(color: Colors.white),
                        ),
                        
                        subtitle: Text(
                          'message ',
                          style: TextStyle(color: Colors.white70
                          ),
                        ),
                        leading: Container(
                          height: 100,
                          width: 50,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/img.png'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Divider(
                        height: 20,
                      )
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}