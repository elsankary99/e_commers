import 'package:flutter/material.dart';
import 'package:shop/core/utils/add_to_cart_button.dart';

class WishlistItem extends StatelessWidget {
  const WishlistItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Image.network(
                "https://businessyield.com/wp-content/uploads/2021/08/cars-800x500.jpg",
                // height: 85,
              ),
            ),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("BIDEN Mens Watches"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$ 199",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                      AddToCart(),
                    ],
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
