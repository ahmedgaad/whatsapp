import 'package:flutter/material.dart';
import 'package:whatsapp/home_page.dart';

class Splash extends StatefulWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed( Duration( milliseconds: 2000 ),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  const HomePage()));
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: 75,
          height: 75,
          child: 
            Image.asset("images/splash.png"),
        ),
      ),

      
    );
  }
}