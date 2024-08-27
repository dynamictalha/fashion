import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{
  // list of items on sale
  final List _shopItems = [
    // [itemName,itemInfo,itemPrice,imagePath,color,detailInfo]
    ["Clothes Black A","perfect for both casual and formal occasions","Rs1200","images/cart/1.jpg", Colors.black,
    "Elevate your style with our curated collection of quality shirts that blend comfort and fashion effortlessly."],

    ["Clothes Black B","perfect for both casual and formal occasions","Rs1200","images/cart/1.jpg", Colors.black,
    "Elevate your style with our curated collection of quality shirts that blend comfort and fashion effortlessly."],

    ["Clothes Black C","perfect for both casual and formal occasions","Rs1200","images/cart/1.jpg", Colors.black,
    "Elevate your style with our curated collection of quality shirts that blend comfort and fashion effortlessly."],

    ["Clothes Black D","perfect for both casual and formal occasions","Rs1200","images/cart/1.jpg", Colors.black,
    "Elevate your style with our curated collection of quality shirts that blend comfort and fashion effortlessly."],

    ["Clothes Black E","perfect for both casual and formal occasions","Rs1200","images/cart/1.jpg", Colors.black,
    "Elevate your style with our curated collection of quality shirts that blend comfort and fashion effortlessly."],
    
    ["Clothes Black D","perfect for both casual and formal occasions","Rs1200","images/cart/1.jpg", Colors.black,
    "Elevate your style with our curated collection of quality shirts that blend comfort and fashion effortlessly."],
  ];

  get shopItems => _shopItems; 
}