import 'package:e_commerce/component/Clothing_Item_Title.dart';
import 'package:e_commerce/model/bottom_nav_bar.dart';
import 'package:e_commerce/model/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 30, 26, 1),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "MyStudio",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      drawer: const Drawer(
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: Consumer<CartModel>(
              builder: (context, value, child) {
                return GridView.builder(
                  itemCount: value.shopItems.length,
                  padding: const EdgeInsets.all(12),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1 / 1.78,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return ClothingItemTitle(
                      itemName: value.shopItems[index][0],
                      itemInfo: value.shopItems[index][1],
                      itemPrice: value.shopItems[index][2],
                      itemImage: value.shopItems[index][3],
                      color: value.shopItems[index][4],
                      detailInfo: value.shopItems[index][5],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
