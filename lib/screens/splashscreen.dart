import 'dart:async';
import 'package:farmers_fresh_zone_ui_clone/screens/mainpage.dart';
import 'package:flutter/material.dart';

class Splashs extends StatefulWidget {
  const Splashs({super.key});


  @override
  State<Splashs> createState() => _SplashsState();
}

class _SplashsState extends State<Splashs> {

  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => MainPage())
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
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/icon1.png"),
            ),
          ),
        ),
      ),
    );
  }
}