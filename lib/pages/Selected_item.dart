import 'package:e_commerce/model/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class SelectedItem extends StatefulWidget {
   final String itemName;
  final String itemInfo;
  final String itemPrice;
  final String itemImage;
  final String detailInfo;
  // final in selected_index;
  const SelectedItem({super.key,
   required this.itemName,
    required this.itemInfo,
    required this.itemPrice,
    required this.itemImage,
    required this.detailInfo,
    // required this.selected_index,
  });

  @override
  State<SelectedItem> createState() => _SelectedItemState();
}

class _SelectedItemState extends State<SelectedItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 36,  // Adjust the width and height to make it circular
              height: 36,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 2.0),
              ),
              child: Center(
                child: Icon(Icons.arrow_back_ios, color: Colors.black, size: 18),  // Center the icon and adjust its size
              ),
            ),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      endDrawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            // Image
           ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  widget.itemImage,
                  fit: BoxFit.cover,
                ),
              ),
            SizedBox(height: 10,),
            // title
            Text(widget.itemName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
         SizedBox(height: 10,),
        
            //Info
            Text(widget.detailInfo),
        
            // Price button + add to card button
        
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
