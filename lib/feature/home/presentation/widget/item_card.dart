import 'package:flutter/material.dart';
import 'package:shop/core/utils/add_to_cart_button.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Image.network(
            "https://m.media-amazon.com/images/I/71VjM5LOeYL._AC_UL1500_.jpg",
            height: 100,
          ),
          const Text(
            "BIDEN Mens Watches",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "\$ 199",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
              ),
              AddToCart(),
            ],
          )
        ]),
      ),
    );
  }
}
