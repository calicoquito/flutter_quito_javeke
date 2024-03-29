import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget{
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(
      Duration(seconds: 2),
      (){
        Navigator.of(context).pushReplacementNamed('/home');
      }
    );
  }

  @override
  Widget build(BuildContext context){
    return Material(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height*0.2,
              width: MediaQuery.of(context).size.width*0.2 ,
              child: Hero(tag:'logo', child: SvgPicture.asset('images/quitologo.svg')),
            ),
            SizedBox(height: 30,),
            CircularProgressIndicator()
          ] 
        ),
      ),
    );
  }
}