import 'package:flutter/material.dart';
import 'package:shop/core/router/app_router.dart';
import 'package:shop/core/utils/add_to_cart_button.dart';
import 'package:shop/feature/home/data/models/products/products.dart';

class ItemCard extends StatelessWidget {
  final Products product;
  const ItemCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        router.push(ProductDetailsRoute(product: product));
      },
      child: Card(
        elevation: 2,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Image.network(
                    product.image ??
                        "https://m.media-amazon.com/images/I/71VjM5LOeYL._AC_UL1500_.jpg",
                    height: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    product.title!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "\$ ${product.price}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    ),
                    AddToCart(),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
