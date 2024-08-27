import 'dart:async';

import 'package:e_commerce/pages/login_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 1),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
    });
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Center(
           
          child: Image.asset(
            height: double.infinity,
            fit: BoxFit.fitHeight,
           "images/screen3.gif",)
        ),
      ),

    );
  }
}