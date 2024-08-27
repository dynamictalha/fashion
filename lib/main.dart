import 'package:e_commerce/model/cart_model.dart';
import 'package:e_commerce/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( ChangeNotifierProvider(
    create: (context) => CartModel(),
    child: const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "My Clothing",
    home: SplashScreen() ,
  ),
    ));
}


