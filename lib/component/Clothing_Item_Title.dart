import 'package:e_commerce/pages/Selected_item.dart';
import 'package:flutter/material.dart';

class ClothingItemTitle extends StatelessWidget {
  final String itemName;
  final String itemInfo;
  final String itemPrice;
  final String itemImage;
  final String detailInfo;
  final Color color;

  const ClothingItemTitle({
    super.key,
    required this.itemName,
    required this.itemInfo,
    required this.itemPrice,
    required this.itemImage,
    required this.detailInfo,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    // Get the screen width and height for responsive design
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    // Adjust height based on the screen size
    final double containerHeight = screenHeight * 0.5; // 50% of screen height
    final double imageHeight = containerHeight * 0.5; // 60% of container height

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: containerHeight,
        width: screenWidth * 0.8, // 80% of screen width
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              // Image with border radius
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  itemImage,
                  height: imageHeight,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 8),
              // Item Name
              
                Text(
                  itemName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              
              const SizedBox(height: 4),
              // Item Info
              Text(
                  itemInfo,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              const SizedBox(height: 8),
              // Item Price + button
    
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                      onPressed: () {},
                      color: color,
                      minWidth: 0.2,
                      // height: 10,
                  
                      child: Text(
                        itemPrice,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> SelectedItem(
                          itemName: itemName,
                          itemInfo: itemInfo,
                          itemImage: itemImage,
                          itemPrice: itemImage,
                          detailInfo: detailInfo,

                        )));
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 1,
                            color: Colors.black
                          ),
                          color: Colors.white, 
                        ),
                        child: Icon(Icons.shopping_cart)
                      ),
                    )
                ],
              ),

              
            ],
          ),
        ),
      ),
    );
  }
}
