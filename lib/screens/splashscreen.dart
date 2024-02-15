import 'dart:async';
import 'package:farmers_fresh_zone_ui_clone/screens/homepage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splashs(),
  ));
}

class Splashs extends StatefulWidget {

  @override
  State<Splashs> createState() => _SplashsState();
}

class _SplashsState extends State<Splashs> {

  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomePage())
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/icon1.png"),
            ),
          ),
        ),
      ),
    );
  }
}